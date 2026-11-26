#!/usr/bin/env python3
"""Card review tool: which cards are up to date, and which depart from the game rules.

Each card ends with a block comment holding its notes (see guides/workflow.txt):

    /*
    review: style=2026-11-14 changelog=2026-10-02

    house-rule: The Spirit Companion has an HP pool instead of healing charges.

    interpretation: The changelog lists the results without numbers;
    they follow its order.
    */

`review:` says which version of writing_rules.txt the card was rewritten with and which
official changelog was applied to it. When the writing rules change or a new changelog comes
out, update STYLE and CHANGELOG below: every older card shows up as "to review".

Usage, from anywhere:
    python3 tools/review.py [folder...]          review status by class or spell school
    python3 tools/review.py -v [folder...]       also list the up-to-date cards
    python3 tools/review.py --rules [folder...]  list the house-rule, interpretation and
                                                 changelog notes
"""

import re
import sys
from collections import defaultdict
from pathlib import Path

STYLE = "2026-11-14"
CHANGELOG = "2026-10-02"
NOTE_TAGS = ("house-rule", "interpretation", "changelog")

ROOT = Path(__file__).resolve().parent.parent
DEFAULT_TARGETS = ["game"]
NOT_CARDS = {"mod.typ", "passive_abilities.typ", "weapon_properties.typ", "armor_properties.typ", "keywords.typ", "conditions.typ", "terms.typ"}
BLOCK_COMMENT = re.compile(r"/\*(.*?)\*/", re.S)
REVIEW = re.compile(r"^review: style=(\S+) changelog=(\S+)\s*$", re.M)
NOTE_START = re.compile(r"^(" + "|".join(NOTE_TAGS) + r"):\s*(.*)$")


def is_card(path):
    return path.name not in NOT_CARDS and not path.name.endswith("_keywords.typ")


def group_of(path):
    """game/class/berserker/... -> class/berserker, game/spells/fire/... -> spells/fire."""
    parts = path.relative_to(ROOT / "game").parts
    return "/".join(parts[:2]) if len(parts) > 2 else parts[0]


def comments(source):
    return [m.group(1) for m in BLOCK_COMMENT.finditer(source)]


def notes(source):
    """Yield (tag, text) for each note; a note runs until a blank line or the next tag."""
    for comment in comments(source):
        tag, text = None, []
        for line in comment.splitlines() + [""]:
            line = line.strip()
            start = NOTE_START.match(line)
            if start or not line or line.startswith("review:"):
                if tag:
                    yield tag, " ".join(text)
                tag, text = (start.group(1), [start.group(2)]) if start else (None, [])
            elif tag:
                text.append(line)


def files(args):
    targets = [ROOT / t for t in (args or DEFAULT_TARGETS)]
    for target in targets:
        if target.is_dir():
            yield from sorted(p for p in target.rglob("*.typ") if not p.name.startswith("."))
        else:
            yield target


def show_status(args, verbose):
    groups = defaultdict(lambda: {"ok": [], "todo": []})
    for path in files(args):
        if not is_card(path):
            continue
        source = path.read_text(encoding="utf-8")
        match = next((m for c in comments(source) for m in [REVIEW.search(c)] if m), None)
        if match is None:
            status = "never reviewed"
        elif match.groups() == (STYLE, CHANGELOG):
            groups[group_of(path)]["ok"].append(path)
            continue
        else:
            status = f"style={match.group(1)} changelog={match.group(2)}"
        groups[group_of(path)]["todo"].append((path, status))

    print(f"Current versions: style={STYLE} changelog={CHANGELOG}\n")
    for name in sorted(groups):
        ok, todo = groups[name]["ok"], groups[name]["todo"]
        print(f"{name}: {len(ok)}/{len(ok) + len(todo)} up to date")
        for path, status in todo:
            print(f"    to review  {path.relative_to(ROOT)}  ({status})")
        if verbose:
            for path in ok:
                print(f"    ok         {path.relative_to(ROOT)}")


def show_rules(args):
    by_tag = defaultdict(list)
    for path in files(args):
        for tag, text in notes(path.read_text(encoding="utf-8")):
            by_tag[tag].append((path, text))
    for tag in NOTE_TAGS:
        print(f"== {tag} ({len(by_tag[tag])})")
        for path, text in by_tag[tag]:
            print(f"  {path.relative_to(ROOT)}\n      {text}")
        print()


def main():
    args = [a for a in sys.argv[1:] if not a.startswith("-")]
    if "--rules" in sys.argv:
        show_rules(args)
    else:
        show_status(args, "-v" in sys.argv)
    return 0


if __name__ == "__main__":
    sys.exit(main())
