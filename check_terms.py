#!/usr/bin/env python3
"""Report game terms typed by hand instead of through terms.typ.

Run from anywhere: python3 check_terms.py
Exits with status 1 if a raw form is found.
"""

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent
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


def check_file(path):
    source = path.read_text(encoding="utf-8")
    problems = []
    rules = [
        rule for rule in TEXT_RULES
        if not (path.name in DEFINITION_FILES and "kw_difficult_terrain" in rule[1])
    ]
    for block in content_blocks(source):
        block = FORMULA_CALL.sub("", block)
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
        files.extend(sorted(path.rglob("*.typ")) if path.is_dir() else [path])
    total = 0
    for path in files:
        for problem in check_file(path):
            print(f"{path.relative_to(ROOT)}: {problem}")
            total += 1
    print(f"{len(files)} files checked, {total} problem(s)")
    return 1 if total else 0


if __name__ == "__main__":
    sys.exit(main())
