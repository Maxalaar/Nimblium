#!/usr/bin/env python3
"""Export every card as an individual PNG, mirroring the project's folder
hierarchy under cards/ (e.g. class/cheat/underhanded/creative_accounting.typ
-> cards/class/cheat/underhanded/creative_accounting.png).
"""

import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent
OUTPUT_DIR = ROOT / "cards"
PPI = 300
CARD_DIRS = ["class", "spells", "creatures"]
EXCLUDED_NAMES = {"mod.typ", "passive_abilities.typ", "raging.typ"}

WRAPPER_TEMPLATE = """\
#import "{filename}": {symbol}
#set page(width: 63mm, height: 88mm, margin: 0mm)
#{symbol}
"""


def find_card_files():
    for dir_name in CARD_DIRS:
        for path in sorted((ROOT / dir_name).rglob("*.typ")):
            if path.name in EXCLUDED_NAMES or path.name.startswith("."):
                continue
            yield path


def export_card(path: Path) -> Path:
    symbol = path.stem
    out_path = OUTPUT_DIR / path.relative_to(ROOT).with_suffix(".png")
    out_path.parent.mkdir(parents=True, exist_ok=True)

    wrapper = path.with_name(f".export_{symbol}.typ")
    wrapper.write_text(WRAPPER_TEMPLATE.format(filename=path.name, symbol=symbol))

    try:
        subprocess.run(
            [
                "typst", "compile",
                "--root", str(ROOT),
                "--ppi", str(PPI),
                str(wrapper), str(out_path),
            ],
            check=True,
        )
    finally:
        wrapper.unlink(missing_ok=True)

    return out_path


def main():
    # Clean up any wrapper left behind by a previous interrupted run.
    for leftover in ROOT.rglob(".export_*.typ"):
        leftover.unlink()

    count = 0
    for path in find_card_files():
        out_path = export_card(path)
        print(f"  {path.relative_to(ROOT)} -> {out_path.relative_to(ROOT)}")
        count += 1

    print(f"Exported {count} cards to {OUTPUT_DIR.relative_to(ROOT)}/")


if __name__ == "__main__":
    main()
