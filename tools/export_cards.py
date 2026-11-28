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

Then the Codex, build/nimblium_codex.pdf, is built every time: the whole game in one PDF (cover,
introduction, contents, rules pages, sheets, and the front of every card, 9 per page), where card
names written with #card_ref link to their card (templates/codex.typ). --book is accepted and
ignored.

Version dates: every document prints, at its bottom left, the day its text last changed
(templates/version.typ). After compiling a document, its text is read back from the PDF and
compared with the one stored in versions.json (the same words, in any order): if it changed, or the document is new, its date
becomes today's and it is compiled again with that date. Everything is always recompiled (a
template may have changed the look); only the date waits for a change of text.
"""

import datetime
import json
import re
import shutil
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


def is_card(path: Path) -> bool:
    name = path.name
    return not (name in EXCLUDED_NAMES or name.endswith("_class_sheet.typ") or name.endswith("_keywords.typ")
                or name.startswith("."))


def find_card_files():
    for dir_name in CARD_DIRS:
        for path in sorted((ROOT / dir_name).rglob("*.typ")):
            if is_card(path):
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


CODEX_PATH = BUILD / "nimblium_codex.pdf"


def card_types(path: Path):
    """The string types of a card, in order (a variable in its type list is skipped)."""
    match = re.search(r"type:\s*\(([^)]*)\)", path.read_text(encoding="utf-8"))
    return re.findall(r'"((?:[^"\\]|\\.)*)"', match.group(1)) if match else []


def folder_title(folder: Path, cards) -> str:
    """The name of a pool or a subclass: the third type of its cards, else the folder's name."""
    for card in cards:
        types = card_types(card)
        if len(types) >= 3:
            return types[2]
    small = {"of", "the", "and", "a", "an", "in", "on", "to"}
    words = folder.name.split("_")
    return " ".join(w if i and w in small else w.capitalize() for i, w in enumerate(words))


def cards_in(folder: Path, recursive: bool = False):
    files = folder.rglob("*.typ") if recursive else folder.glob("*.typ")
    return sorted(p for p in files if is_card(p))


def catalog():
    """Every document of the game in the order of the Codex: a list of parts, each a pair
    ("doc", entries, path) or ("cards", entries, paths). The entries (level, title[, kind]) are the
    Codex's contents and bookmarks, and the website's sections."""
    parts = []

    def cards(pairs, paths):
        if paths:
            parts.append(("cards", pairs, paths))

    def document(pairs, path):
        parts.append(("doc", pairs, path))

    game = ROOT / "game"
    for i, name in enumerate(["adventure", "combat", "magic"]):
        page = game / "rules" / f"{name}.typ"
        document(([(1, "Rules")] if i == 0 else []) + [(2, document_name(page, "rules_page"))], page)
    document([(1, "Hero sheet")], game / "hero_sheet.typ")
    cards([(1, "Ancestries")], cards_in(game / "ancestries", recursive=True))
    cards([(1, "Backgrounds")], cards_in(game / "backgrounds", recursive=True))
    cards([(1, "Actions")], cards_in(game / "actions"))

    for i, class_dir in enumerate(sorted(d for d in (game / "class").iterdir() if d.is_dir())):
        sheets = list(class_dir.glob("*_class_sheet.typ"))
        name = document_name(sheets[0], "class_sheet") if sheets else class_dir.name.capitalize()
        head = [(1, "Classes")] if i == 0 else []
        if sheets:
            document(head + [(2, name)], sheets[0])
            head = []
        else:
            head += [(2, name)]
        cards(head + [(3, "Class features", "Class features")], cards_in(class_dir))
        pools = sorted(d for d in class_dir.iterdir() if d.is_dir() and d.name != "subclasses")
        subclasses = sorted(d for d in (class_dir / "subclasses").iterdir() if d.is_dir()) if (class_dir / "subclasses").is_dir() else []
        for folder in pools:
            found = cards_in(folder, recursive=True)
            cards([(3, folder_title(folder, found), "Pool of choices")], found)
        for folder in subclasses:
            found = cards_in(folder, recursive=True)
            cards([(3, folder_title(folder, found), "Subclass")], found)

    for i, school in enumerate(sorted(d for d in (game / "spells").iterdir() if d.is_dir())):
        cards(([(1, "Spells")] if i == 0 else []) + [(2, school.name.capitalize())], cards_in(school, recursive=True))

    items = game / "items"
    item_families = [("Melee weapons", items / "weapons" / "melee"), ("Ranged weapons", items / "weapons" / "ranged"),
                     ("Armor", items / "armor"), ("Gear", items / "gear"), ("Magic items", items / "magic")]
    for i, (title, folder) in enumerate(item_families):
        cards(([(1, "Items")] if i == 0 else []) + [(2, title)], cards_in(folder, recursive=True))

    for i, family in enumerate(sorted(d for d in (game / "creatures").iterdir() if d.is_dir())):
        cards(([(1, "Creatures")] if i == 0 else []) + [(2, family.name.capitalize())], cards_in(family, recursive=True))

    document([(1, "Glossary")], game / "rules" / "glossary.typ")
    return parts


def sections(parts):
    """For each part, the path of titles it sits in (["Classes", "Berserker", "Savage Arsenal"])
    and its kind ("Pool of choices"...), following its entries."""
    stack = {}
    out = []
    for _, pairs, _ in parts:
        kind = None
        for entry in pairs:
            level, title = entry[0], entry[1]
            stack = {k: v for k, v in stack.items() if k < level}
            stack[level] = title
            kind = entry[2] if len(entry) > 2 else None
        out.append(([stack[k] for k in sorted(stack)], kind))
    return out


def export_codex(versions) -> Path:
    """The whole game in one PDF: cover, introduction, contents, rules pages, sheets and the
    fronts of every card, in the order of the game (templates/codex.typ)."""
    lines = ['#import "/templates/codex.typ": *', "#show: codex_doc"]
    imports = []

    def card_list(paths):
        names = []
        for path in paths:
            alias = f"card_{len(imports)}"
            imports.append(f'#import "/{path.relative_to(ROOT).as_posix()}": {path.stem} as {alias}')
            names.append(alias)
        return names

    def entries(pairs):
        return "(" + "".join("(" + ", ".join(json.dumps(x) for x in pair) + "), " for pair in pairs) + ")"

    dates = [v["date"] for v in versions.values()]
    lines.append(f'#cover(date: "{max(dates)}")' if dates else "#cover()")
    lines += ["#introduction()", "#contents()"]

    for kind, pairs, target in catalog():
        if kind == "cards":
            lines.append(f"#cards({entries(pairs)}, " + ", ".join(card_list(target)) + ")")
        else:
            lines.append(f"#codex_mark(..{entries(pairs)})")
            lines.append(f'#include "/{target.relative_to(ROOT).as_posix()}"')

    wrapper = ROOT / ".export_codex.typ"
    wrapper.write_text("\n".join(imports + lines) + "\n", encoding="utf-8")
    try:
        subprocess.run(["typst", "compile", "--root", str(ROOT), "--input", "faces=front", "--input", "codex=true",
                        str(wrapper), str(CODEX_PATH)], check=True)
    finally:
        wrapper.unlink(missing_ok=True)
    return CODEX_PATH


SITE = BUILD / "site"
CARD_W, CARD_H = 63.0, 88.0  # mm


def typst_query(wrapper: Path, selector: str, inputs=()):
    args = ["typst", "query", "--root", str(ROOT)]
    for i in inputs:
        args += ["--input", i]
    out = subprocess.run(args + [str(wrapper), selector, "--field", "value"], check=True,
                         capture_output=True, text=True).stdout
    return json.loads(out)


def export_site(versions) -> Path:
    """The website's data, in build/site/ (website/ holds the page itself): a vector image (SVG)
    of the front of every card, every front and every back in two PDFs (one card per page) for the print
    sheets, the A4 documents with an image of each page, the definitions of the keywords and
    conditions, and data/nimblium.js, the index: for each card its name, types, section, date,
    text, pages, and the places of the keywords and card names that the page shows on hover."""
    parts = catalog()
    places = sections(parts)
    (SITE / "cards").mkdir(parents=True, exist_ok=True)
    (SITE / "docs").mkdir(parents=True, exist_ok=True)
    (SITE / "data").mkdir(parents=True, exist_ok=True)
    for old in list((SITE / "cards").glob("*")) + list((SITE / "docs").glob("*")):
        old.unlink()

    # Every card on its own page, fronts then backs. A long creature gives two pages.
    card_paths = [p for kind, _, target in parts if kind == "cards" for p in target]
    lines = ['#set page(width: 63mm, height: 88mm, margin: 0mm)',
             '#set text(size: 1pt, costs: (widow: 0%, orphan: 0%))',
             '#set par(leading: 0mm, spacing: 0mm)']
    imports = []
    for i, path in enumerate(card_paths):
        imports.append(f'#import "/{path.relative_to(ROOT).as_posix()}": {path.stem} as card_{i}')
        lines.append("#pagebreak(weak: true)")
        lines.append(f'#context [#metadata((file: {i}, page: here().page()))<card-file>]')
        lines.append(f"#card_{i}")
    wrapper = ROOT / ".export_site.typ"
    wrapper.write_text("\n".join(imports + lines) + "\n", encoding="utf-8")
    front_inputs = ("faces=front", "hotspots=true")
    try:
        for face, inputs in (("front", front_inputs), ("back", ("faces=back",))):
            args = ["typst", "compile", "--root", str(ROOT)]
            for i in inputs:
                args += ["--input", i]
            subprocess.run(args + [str(wrapper), str(SITE / f"{face}s.pdf")], check=True)
        args = ["typst", "compile", "--root", str(ROOT), "--format", "svg"]
        for i in front_inputs:
            args += ["--input", i]
        subprocess.run(args + [str(wrapper), str(SITE / "cards" / "{0p}.svg")], check=True)
        starts = {m["file"]: m["page"] for m in typst_query(wrapper, "<card-file>", front_inputs)}
        hotspots = typst_query(wrapper, "<hotspot>", front_inputs)
    finally:
        wrapper.unlink(missing_ok=True)
    images = sorted((SITE / "cards").glob("*.svg"))
    digits = len(images[0].stem) if images else 1
    total = len(images)

    by_page = {}
    for h in hotspots:
        by_page.setdefault(h["page"], []).append({
            "kind": h["kind"], "key": h["key"],
            "x": round(h["x"] / CARD_W, 4), "y": round(h["y"] / CARD_H, 4),
            "w": round(h["w"] / CARD_W, 4), "h": round(h["h"] / CARD_H, 4)})

    cards = []
    index_of = {p: i for i, p in enumerate(card_paths)}
    for (kind, pairs, target), (path_titles, group_kind) in zip(parts, places):
        if kind != "cards":
            continue
        for path in target:
            i = index_of[path]
            first = starts[i]
            last = (starts[i + 1] - 1) if i + 1 < len(card_paths) else total
            pages = list(range(first, last + 1))
            name = document_name(path, "card")
            cards.append({
                "id": path.relative_to(ROOT / "game").with_suffix("").as_posix(),
                "name": name,
                "types": card_types(path),
                "section": path_titles,
                "kind": group_kind,
                "date": versions.get(name, {}).get("date"),
                "text": versions.get(name, {}).get("text", ""),
                "pages": pages,
                "images": [f"cards/{str(p).zfill(digits)}.svg" for p in pages],
                "hotspots": [by_page.get(p, []) for p in pages],
            })

    # The A4 documents: their PDF, and an image of each page.
    docs = []
    for (kind, pairs, target), (path_titles, _) in zip(parts, places):
        if kind != "doc":
            continue
        rel = target.relative_to(ROOT / "game").with_suffix("")
        slug = rel.as_posix().replace("/", "-")
        pdf = output_pdf(target)
        shutil.copy(pdf, SITE / "docs" / f"{slug}.pdf")
        subprocess.run(["typst", "compile", "--root", str(ROOT), "--format", "svg",
                        str(target), str(SITE / "docs" / f"{slug}-{{0p}}.svg")], check=True)
        images = sorted(p.name for p in (SITE / "docs").glob(f"{slug}-*.svg"))
        key = ("Rules: " + document_name(target, "rules_page") if target.parent.name == "rules"
               else "Class sheet: " + document_name(target, "class_sheet") if target.name.endswith("_class_sheet.typ")
               else "Hero sheet")
        docs.append({"id": rel.as_posix(), "name": path_titles[-1], "section": path_titles,
                     "date": versions.get(key, {}).get("date"), "text": versions.get(key, {}).get("text", ""),
                     "pdf": f"docs/{slug}.pdf", "images": [f"docs/{n}" for n in images]})

    # Definitions of every keyword and condition, as plain text, for the hover bubbles.
    defs_wrapper = ROOT / ".export_site_defs.typ"
    defs_wrapper.write_text("""#import "/global.typ": *
#import "/game/class/stormshifter/stormshifter_keywords.typ": stormshifter_keywords
#import "/templates/site_marks.typ": plain
#for dict in (conditions, keywords, berserker_keywords, hunter_keywords, mage_keywords, stormshifter_keywords) {
  for (_, d) in dict { [#metadata(plain(d))<definition>] }
}
""", encoding="utf-8")
    try:
        raw = typst_query(defs_wrapper, "<definition>")
    finally:
        defs_wrapper.unlink(missing_ok=True)
    definitions = {}
    for text in raw:
        name, _, rest = text.partition(":")
        name, rest = name.strip(), rest.strip()
        definitions[name] = rest
        # "Knockback X" is shown as "Knockback" in rules text.
        if name.endswith(" X"):
            definitions.setdefault(name[:-2], rest)
    # Words that point to the definition of another form: to Taunt makes a creature Taunted.
    for word, target in {"Taunt": "Taunted"}.items():
        if target in definitions:
            definitions.setdefault(word, definitions[target])

    dates = [v["date"] for v in versions.values()]
    data = {"date": max(dates) if dates else None, "cards": cards, "docs": docs, "definitions": definitions}
    (SITE / "data" / "nimblium.js").write_text(
        "window.NIMBLIUM = " + json.dumps(data, ensure_ascii=False, separators=(",", ":")) + ";\n", encoding="utf-8")
    return SITE


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

    # The Codex is rebuilt every time, so everything is up to date together (--book is ignored).
    codex = export_codex(versions)
    print(f"Codex: {codex.relative_to(ROOT)}")

    # The website's data (build/site/), from the same documents.
    site = export_site(versions)
    print(f"Site data: {site.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
