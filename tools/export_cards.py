#!/usr/bin/env python3
"""Export every card as an individual PDF, right next to its source .typ
file (e.g. game/class/cheat/underhanded/creative_accounting.typ ->
game/class/cheat/underhanded/creative_accounting.pdf).

Each PDF shows the front of the card on the left and its back on the right,
with a small gap between them (see templates/creat_frame.typ).

PDF output (instead of PNG) lets Typst-aware viewers (e.g. the Tinymist
VS Code extension) jump straight to the source .typ file on click.

Class sheets (game/class/<class>/<class>_class_sheet.typ, one A4 page per class) and rules pages
(game/rules/<area>.typ, one A4 sheet per area of the game) are exported next to their source too.

With --book, also export every card into one PDF, build/nimblium_cards.pdf, one
card per page. There, card names written with #card_ref link to their card
(game/terms.typ).
"""

import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
CARD_DIRS = ["game/class", "game/spells", "game/creatures", "game/actions", "game/items"]
EXCLUDED_NAMES = {
    "mod.typ",
    "passive_abilities.typ",
    "weapon_properties.typ",
}

WRAPPER_TEMPLATE = """\
#import "{filename}": {symbol}
#set page(width: 2 * 63mm + 5mm, height: auto, margin: 0mm)
#{symbol}
"""


def find_card_files():
    for dir_name in CARD_DIRS:
        for path in sorted((ROOT / dir_name).rglob("*.typ")):
            if path.name in EXCLUDED_NAMES or path.name.endswith("_class_sheet.typ") or path.name.endswith("_keywords.typ") or path.name.startswith("."):
                continue
            yield path


def export_card(path: Path) -> Path:
    symbol = path.stem
    out_path = path.with_suffix(".pdf")

    wrapper = path.with_name(f".export_{symbol}.typ")
    wrapper.write_text(WRAPPER_TEMPLATE.format(filename=path.name, symbol=symbol))

    try:
        subprocess.run(
            [
                "typst", "compile",
                "--root", str(ROOT),
                str(wrapper), str(out_path),
            ],
            check=True,
        )
    finally:
        wrapper.unlink(missing_ok=True)

    return out_path


BOOK_PATH = ROOT / "build" / "nimblium_cards.pdf"


def export_book(paths) -> Path:
    lines = []
    for i, path in enumerate(paths):
        rel = path.relative_to(ROOT).as_posix()
        lines.append(f'#import "/{rel}": {path.stem} as card_{i}')
    lines.append("#set page(width: 2 * 63mm + 5mm, height: auto, margin: 0mm)")
    for i in range(len(paths)):
        if i:
            lines.append("#pagebreak()")
        lines.append(f"#card_{i}")
    BOOK_PATH.parent.mkdir(exist_ok=True)
    wrapper = ROOT / ".export_book.typ"
    wrapper.write_text("\n".join(lines) + "\n")
    try:
        subprocess.run(["typst", "compile", "--root", str(ROOT), str(wrapper), str(BOOK_PATH)], check=True)
    finally:
        wrapper.unlink(missing_ok=True)
    return BOOK_PATH


def main():
    # Clean up any wrapper left behind by a previous interrupted run.
    for leftover in ROOT.rglob(".export_*.typ"):
        leftover.unlink()

    count = 0
    for path in find_card_files():
        out_path = export_card(path)
        print(f"  {path.relative_to(ROOT)} -> {out_path.relative_to(ROOT)}")
        count += 1

    print(f"Exported {count} cards")

    sheets = sorted((ROOT / "game" / "class").rglob("*_class_sheet.typ")) + sorted((ROOT / "game" / "rules").glob("*.typ"))
    for sheet in sheets:
        out_path = sheet.with_suffix(".pdf")
        subprocess.run(["typst", "compile", "--root", str(ROOT), str(sheet), str(out_path)], check=True)
        print(f"  {sheet.relative_to(ROOT)} -> {out_path.relative_to(ROOT)}")

    if "--book" in sys.argv[1:]:
        book = export_book(list(find_card_files()))
        print(f"Book: {book.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
