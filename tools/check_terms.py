#!/usr/bin/env python3
"""Report game terms typed by hand instead of through terms.typ.

Run from anywhere: python3 tools/check_terms.py
Exits with status 1 if a raw form is found.
"""

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
TARGETS = ["class", "spells", "creatures", "keywords.typ", "conditions.typ"]
# Definition files name their own terms in plain text, without keyword styling.
DEFINITION_FILES = {"keywords.typ", "conditions.typ"}
# Arguments of #times(...) and #dc(...) are code, not card text.
FORMULA_CALL = re.compile(r"#(times|dc)\((?:[^()]|\([^()]*\))*\)")

# Forbidden in card text (content blocks and text fields).
TEXT_RULES = [
    (r"(?<![#\w])(STR|DEX|INT|WIL|KEY|LVL|HP|TotH)\b", "use #STR, #WIL, #HP..."),
    (r"\$times\$|×", "use #times(a, b)"),
    (r"(?<![#\w])[Ss]afe [Rr]est\b", "use #safe_rest"),
    (r"(?<![#\w])speed\b|\bSPD\b", "use #speed"),
    (r"\bDEF\b", "use #defense"),
    (r"\b[Pp]rimary [Dd]ie\b", "use #primary_die"),
    (r"\b[Dd]ifficult [Tt]errain\b(?!:)", "use #kw_difficult_terrain"),
    (r"\bThrill of the [Hh]unt\b", "use #thrill_of_the_hunt"),
    (r"(?<![#\w])[Ii]nterpos(e|es|ed|ing)\b(?!:)", "use #kw_interpose"),
    (r"(?<![#\w])[Ff]lying\b(?!:)", "use #kw_flying"),
    (r"(?<![#\w])(Full )?Cover\b(?!:)", "use #kw_cover or #kw_full_cover"),
    (r"(?<![#\w.])([Dd]is)?[Aa]dvantage\b(?!:)", "use #kw_advantage or #kw_disadvantage"),
    (r"(?<![#\w])DC \d", "use #dc(10) or #dc(10, stat: INT)"),
    (r"#keyword_style\[", "use a #kw_ term"),
]

# Forbidden as plain strings in card data.
DATA_RULES = [
    (r'"\d+ Actions?"', "use actions(n)"),
    (r'"\d+ Mana"', "use mana(n)"),
    (r'"\d+ TotH charges?"', "use toth_charges(n)"),
    (r'"\d+ Wounds?"', "use wounds(n)"),
    (r'"\w+/(turn|round|encounter|day|[Ss]afe [Rr]est)"', "use per_turn(n), per_safe_rest(n)..."),
    (r'"Thrill of the [Hh]unt"', "use thrill_of_the_hunt"),
]
TEXT_FIELD = re.compile(
    r'\b(effect|upcast|high_Levels|concentration|damage|range|reach|area): *"((?:[^"\\]|\\.)*)"'
)


def content_blocks(source):
    """Yield the text of [...] blocks, skipping code and string literals."""
    depth = 0
    in_string = False
    current = []
    i = 0
    while i < len(source):
        char = source[i]
        if depth == 0:
            if in_string:
                if char == "\\":
                    i += 1
                elif char == '"':
                    in_string = False
            elif char == '"':
                in_string = True
            elif char == "[":
                depth = 1
                current = []
        elif char == "[":
            depth += 1
            current.append(char)
        elif char == "]":
            depth -= 1
            if depth == 0:
                yield "".join(current)
            else:
                current.append(char)
        else:
            current.append(char)
        i += 1


# Card names: every card file's main `name:`. A card name in another card's text must go
# through #card_ref("Name") (terms.typ), which shows it in italics and links to that card.
CARD_DIRS = ["class", "spells", "creatures"]
CARD_NAME = re.compile(r'#let \w+_data = \(\s*name: "((?:[^"\\]|\\.)*)"')
CARD_REF = re.compile(r'#card_ref\(\s*"((?:[^"\\]|\\.)*)"(?:\s*,\s*"(?:[^"\\]|\\.)*")?\s*\)')
# Words that match a card name but don't refer to that card: (file, name).
REF_EXCEPTIONS = {
    ("class/shepherd/searing_light.typ", "Heal"),          # the verb, at the start of a sentence
    ("creatures/goblin/goblin_taskmaster.typ", "Goblin"),  # any goblin, not the Goblin card
    ("creatures/goblin/nilbog.typ", "Goblin"),
    ("class/mage/mage_class_sheet.typ", "Spellshaper"),           # the kind of ability; the card is cited once
}


def card_names():
    names = {}
    for dir_name in CARD_DIRS:
        for path in (ROOT / dir_name).rglob("*.typ"):
            match = CARD_NAME.search(path.read_text(encoding="utf-8"))
            if match:
                names[match.group(1)] = path
    return names


def name_pattern(name):
    # The name alone or in the plural, not inside a longer word or a string.
    return re.compile(r'(?<![\w#"])' + re.escape(name) + r'(s?)(?![\w"])')


def unmarked_card_names(path, source, names):
    """Card names typed as plain text in the card's content blocks."""
    rel = str(path.relative_to(ROOT))
    own = CARD_NAME.search(source)
    own = own.group(1) if own else None
    problems = []
    for block in content_blocks(source):
        block = CARD_REF.sub("", block)
        # Longest names first, so that "Searing Light" is not also read as "Light".
        for name in sorted(names, key=len, reverse=True):
            if name == own or (rel, name) in REF_EXCEPTIONS:
                continue
            pattern = name_pattern(name)
            for match in pattern.finditer(block):
                problems.append(f'"{match.group(0)}": use #card_ref("{name}")')
            block = pattern.sub(lambda m: "\0" * len(m.group(0)), block)
    for match in CARD_REF.finditer(source):
        if match.group(1) not in names:
            problems.append(f'#card_ref("{match.group(1)}"): no card has this name')
    return problems


# Notes and review markers live in comments, not on the card.
COMMENT = re.compile(r"/\*.*?\*/|(?<![:\w])//[^\n]*", re.S)


def check_file(path, names):
    source = COMMENT.sub("", path.read_text(encoding="utf-8"))
    problems = []
    problems.extend(unmarked_card_names(path, source, names))
    rules = [
        rule for rule in TEXT_RULES
        if not (path.name in DEFINITION_FILES and ("kw_difficult_terrain" in rule[1] or "kw_cover" in rule[1] or "kw_advantage" in rule[1]))
    ]
    for block in content_blocks(source):
        block = CARD_REF.sub("", FORMULA_CALL.sub("", block))
        for pattern, advice in rules:
            for match in re.finditer(pattern, block):
                problems.append(f'"{match.group(0)}": {advice}')
    for field in TEXT_FIELD.finditer(source):
        for pattern, advice in TEXT_RULES:
            for match in re.finditer(pattern, field.group(2)):
                problems.append(f'"{match.group(0)}": {advice}')
    for pattern, advice in DATA_RULES:
        for match in re.finditer(pattern, source):
            problems.append(f"{match.group(0)}: {advice}")
    return problems


def main():
    files = []
    for target in TARGETS:
        path = ROOT / target
        files.extend(sorted(p for p in path.rglob("*.typ") if not p.name.startswith(".")) if path.is_dir() else [path])
    names = card_names()
    total = 0
    for path in files:
        for problem in check_file(path, names):
            print(f"{path.relative_to(ROOT)}: {problem}")
            total += 1
    print(f"{len(files)} files checked, {total} problem(s)")
    return 1 if total else 0


if __name__ == "__main__":
    sys.exit(main())
