#!/usr/bin/env python3
"""Show which cards have been reviewed against the current writing rules and changelog.

Each reviewed card starts with a marker line:
    // review: style=2026-11-14 changelog=2026-10-02
`style` is the version of writing_rules.md the card was rewritten with, `changelog` the
date of the newest official changelog applied to it. When the rules or a new changelog
come out, update STYLE and CHANGELOG below: every older card shows up as "to review".

Run from anywhere: python3 check_review.py [folder...]
  -v  also list the up-to-date cards
"""

import re
import sys
from collections import defaultdict
from pathlib import Path

STYLE = "2026-11-14"
CHANGELOG = "2026-10-02"

ROOT = Path(__file__).resolve().parent
DEFAULT_TARGETS = ["class", "spells", "creatures"]
SKIPPED = {"mod.typ", "passive_abilities.typ"}
MARKER = re.compile(r"^// review: style=(\S+) changelog=(\S+)\s*$", re.M)


def is_card(path):
    return path.name not in SKIPPED and not path.name.endswith("_keywords.typ")


def group_of(path):
    """class/berserker/... -> class/berserker, spells/fire/... -> spells/fire."""
    parts = path.relative_to(ROOT).parts
    return "/".join(parts[:2]) if len(parts) > 2 else parts[0]


def main():
    args = [a for a in sys.argv[1:] if not a.startswith("-")]
    verbose = "-v" in sys.argv
    targets = [ROOT / t for t in (args or DEFAULT_TARGETS)]
    groups = defaultdict(lambda: {"ok": [], "todo": []})
    for target in targets:
        for path in sorted(target.rglob("*.typ")):
            if not is_card(path):
                continue
            match = MARKER.search(path.read_text(encoding="utf-8"))
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
    return 0


if __name__ == "__main__":
    sys.exit(main())
