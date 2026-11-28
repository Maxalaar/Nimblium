#!/usr/bin/env python3
"""Export every card as an individual PDF into build/, in the same tree as its source .typ
file (e.g. game/class/cheat/underhanded/creative_accounting.typ ->
build/game/class/cheat/underhanded/creative_accounting.pdf). Sources and PDFs never mix.

Each PDF shows the front of the card on the left and its back on the right,
with a small gap between them (see templates/creat_frame.typ).

PDF output (instead of PNG) lets Typst-aware viewers (e.g. the Tinymist
VS Code extension) jump straight to the source .typ file on click.

Class sheets (game/class/<class>/<class>_class_sheet.typ, one A4 page per class) and rules pages
(game/rules/<area>.typ, one A4 sheet per area of the game) are exported into build/ the same way.

The hero sheet (game/hero_sheet.typ) is exported too, as a fillable PDF (tools/fillable_pdf.py).

With --book, also export every card into one PDF, build/nimblium_cards.pdf, one
card per page. There, card names written with #card_ref link to their card
(game/terms.typ).

Version dates: every document prints, at its bottom left, the day its text last changed
(templates/version.typ). After compiling a document, its text is read back from the PDF and
compared with the one stored in versions.json (the same words, in any order): if it changed, or the document is new, its date
becomes today's and it is compiled again with that date. Everything is always recompiled (a
template may have changed the look); only the date waits for a change of text.
"""

import datetime
import json
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
BUILD = ROOT / "build"


def output_pdf(source: Path) -> Path:
    """Where the PDF of a source goes: the same path under build/ (game/x.typ -> build/game/x.pdf)."""
    out = BUILD / source.relative_to(ROOT).with_suffix(".pdf")
    out.parent.mkdir(parents=True, exist_ok=True)
    return out
VERSIONS_PATH = ROOT / "versions.json"
TODAY = datetime.date.today().isoformat()
# The printed date itself is left out of the text that is compared.
DATE = re.compile(r"\b\d{4}-\d{2}-\d{2}\b")


def load_versions():
    if VERSIONS_PATH.exists():
        return json.loads(VERSIONS_PATH.read_text(encoding="utf-8"))
    return {}


def save_versions(versions):
    VERSIONS_PATH.write_text(json.dumps(dict(sorted(versions.items())), indent=1, ensure_ascii=False) + "\n",
                             encoding="utf-8")


def pdf_text(pdf: Path) -> str:
    """The text printed in a PDF, without its version date, whitespace collapsed."""
    raw = subprocess.run(["pdftotext", str(pdf), "-"], check=True, capture_output=True, text=True).stdout
    return " ".join(DATE.sub("", raw).split())


def versioned(key, build, pdf: Path, versions, seen):
    """Build a document, then give it today's date if its text changed, and build it again."""
    seen.add(key)
    build()
    text = pdf_text(pdf)
    entry = versions.get(key)
    # The words are compared in any order: pdftotext may read a page's blocks in another order
    # when only the layout moves.
    if entry is None or sorted(entry["text"].split()) != sorted(text.split()):
        versions[key] = {"date": TODAY, "text": text}
        save_versions(versions)
        build()
        return True
    return False


def document_name(path: Path, call: str) -> str:
    """The `name:` given to a document: the card data's, or a template call's."""
    source = path.read_text(encoding="utf-8")
    pattern = r'_data = \(\s*name: "((?:[^"\\]|\\.)*)"' if call == "card" else call + r'\(\s*name: "((?:[^"\\]|\\.)*)"'
    match = re.search(pattern, source)
    if not match:
        sys.exit(f"{path.relative_to(ROOT)}: no name found for its version date")
    return json.loads('"' + match.group(1) + '"')


CARD_DIRS = ["game/class", "game/spells", "game/creatures", "game/actions", "game/items", "game/ancestries", "game/backgrounds"]
EXCLUDED_NAMES = {
    "mod.typ",
    "passive_abilities.typ",
    "weapon_properties.typ",
    "armor_properties.typ",
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
    out_path = output_pdf(path)

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


def compile_page(source: Path) -> Path:
    out_path = output_pdf(source)
    subprocess.run(["typst", "compile", "--root", str(ROOT), str(source), str(out_path)], check=True)
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

    if not VERSIONS_PATH.exists():
        save_versions({})
    versions = load_versions()
    seen = set()
    changed = []

    def report(path, out_path, key, new):
        print(f"  {path.relative_to(ROOT)} -> {out_path.relative_to(ROOT)}" + (f"  [new date {TODAY}]" if new else ""))
        if new:
            changed.append(key)

    count = 0
    for path in find_card_files():
        key = document_name(path, "card")
        out_path = output_pdf(path)
        new = versioned(key, lambda p=path: export_card(p), out_path, versions, seen)
        report(path, out_path, key, new)
        count += 1

    print(f"Exported {count} cards")

    pages = [(sheet, "Class sheet: " + document_name(sheet, "class_sheet"))
             for sheet in sorted((ROOT / "game" / "class").rglob("*_class_sheet.typ"))]
    pages += [(page, "Rules: " + document_name(page, "rules_page"))
              for page in sorted((ROOT / "game" / "rules").glob("*.typ"))]
    for page, key in pages:
        out_path = output_pdf(page)
        new = versioned(key, lambda p=page: compile_page(p), out_path, versions, seen)
        report(page, out_path, key, new)

    # The hero sheet is a fillable PDF.
    sys.path.insert(0, str(ROOT / "tools"))
    from fillable_pdf import make_fillable
    hero = ROOT / "game" / "hero_sheet.typ"
    out_path = output_pdf(hero)
    new = versioned("Hero sheet", lambda: make_fillable(hero, out_path), out_path, versions, seen)
    report(hero, out_path, "Hero sheet", new)

    # Documents that no longer exist (a card renamed or removed) leave the registry.
    gone = sorted(set(versions) - seen)
    for key in gone:
        del versions[key]
    save_versions(versions)
    if gone:
        print(f"Removed from versions.json: {', '.join(gone)}")
    print(f"New date {TODAY}: {len(changed)} document(s)" + (f" ({', '.join(changed)})" if 0 < len(changed) <= 20 else ""))

    if "--book" in sys.argv[1:]:
        book = export_book(list(find_card_files()))
        print(f"Book: {book.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
