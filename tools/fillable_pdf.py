#!/usr/bin/env python3
"""Compile a Typst page and make its PDF fillable.

The page marks each writing area with `form` (templates/hero_sheet.typ), which leaves two
invisible <form-field> metadata, in its top left and bottom right corners, with its name and kind. This script
compiles the page, reads those markers with `typst query`, and adds one AcroForm field per marker
to the PDF (text fields and check boxes).

Usage: python3 tools/fillable_pdf.py [game/hero_sheet.typ]   ->  game/hero_sheet.pdf
Needs pypdf (pip install pypdf).
"""

import json
import subprocess
import sys
import tempfile
from pathlib import Path

from pypdf import PdfWriter
from pypdf.generic import (
    ArrayObject,
    BooleanObject,
    DecodedStreamObject,
    DictionaryObject,
    FloatObject,
    NameObject,
    NumberObject,
    TextStringObject,
)

ROOT = Path(__file__).resolve().parent.parent
FONT = "/TiRo"  # Times-Roman, the standard font closest to the sheet's serif
ALIGN = {"left": 0, "center": 1, "right": 2}
KAPPA = 0.5523


def name(n):
    return NameObject(n)


def appearance(writer, w, h, content):
    stream = DecodedStreamObject()
    stream.set_data(content.encode())
    stream.update({
        name("/Type"): name("/XObject"),
        name("/Subtype"): name("/Form"),
        name("/BBox"): ArrayObject([FloatObject(0), FloatObject(0), FloatObject(w), FloatObject(h)]),
    })
    return writer._add_object(stream)


def tick_drawing(shape, w, h):
    """What a ticked box shows: a filled dot in a circle, a check mark in a square."""
    if shape == "circle":
        cx, cy, r = w / 2, h / 2, min(w, h) / 2 * 0.62
        k = r * KAPPA
        return (f"0 g {cx + r:.2f} {cy:.2f} m "
                f"{cx + r:.2f} {cy + k:.2f} {cx + k:.2f} {cy + r:.2f} {cx:.2f} {cy + r:.2f} c "
                f"{cx - k:.2f} {cy + r:.2f} {cx - r:.2f} {cy + k:.2f} {cx - r:.2f} {cy:.2f} c "
                f"{cx - r:.2f} {cy - k:.2f} {cx - k:.2f} {cy - r:.2f} {cx:.2f} {cy - r:.2f} c "
                f"{cx + k:.2f} {cy - r:.2f} {cx + r:.2f} {cy - k:.2f} {cx + r:.2f} {cy:.2f} c f")
    return (f"0 G 1.1 w 1 J 1 j {w * 0.22:.2f} {h * 0.52:.2f} m {w * 0.42:.2f} {h * 0.28:.2f} l "
            f"{w * 0.80:.2f} {h * 0.76:.2f} l S")


def make_fillable(source: Path, output: Path):
    with tempfile.TemporaryDirectory() as tmp:
        plain = Path(tmp) / "plain.pdf"
        subprocess.run(["typst", "compile", "--root", str(ROOT), str(source), str(plain)], check=True)
        markers = json.loads(subprocess.run(
            ["typst", "query", "--root", str(ROOT), str(source), "<form-field>", "--field", "value"],
            check=True, capture_output=True, text=True).stdout)

        writer = PdfWriter(clone_from=str(plain))
        font = writer._add_object(DictionaryObject({
            name("/Type"): name("/Font"),
            name("/Subtype"): name("/Type1"),
            name("/BaseFont"): name("/Times-Roman"),
            name("/Encoding"): name("/WinAnsiEncoding"),
        }))
        # Each area has a "start" marker (top left corner) and an "end" one (bottom right).
        areas = {}
        for m in markers:
            area = areas.setdefault(m["name"], {})
            if m["corner"] in area:
                sys.exit(f"duplicate form field: {m['name']}")
            area[m["corner"]] = m
        fields = ArrayObject()
        for area in areas.values():
            m, end = area["start"], area["end"]
            page = writer.pages[m["page"] - 1]
            top = float(page.mediabox.height) - m["y"]
            w, h = end["x"] - m["x"], end["y"] - m["y"]
            rect = ArrayObject([FloatObject(m["x"]), FloatObject(top - h), FloatObject(m["x"] + w), FloatObject(top)])
            field = DictionaryObject({
                name("/Type"): name("/Annot"),
                name("/Subtype"): name("/Widget"),
                name("/T"): TextStringObject(m["name"]),
                name("/Rect"): rect,
                name("/F"): NumberObject(4),  # printed
                name("/P"): page.indirect_reference,
            })
            if m["kind"] == "check":
                field.update({
                    name("/FT"): name("/Btn"),
                    name("/V"): name("/Off"),
                    name("/AS"): name("/Off"),
                    name("/AP"): DictionaryObject({name("/N"): DictionaryObject({
                        name("/Yes"): appearance(writer, w, h, tick_drawing(m["check"], w, h)),
                        name("/Off"): appearance(writer, w, h, ""),
                    })}),
                })
            else:
                flags = 4096 if m["multiline"] else 0
                field.update({
                    name("/FT"): name("/Tx"),
                    name("/DA"): TextStringObject(f"{FONT} {m['size']} Tf 0 g"),
                    name("/Q"): NumberObject(ALIGN[m["align"]]),
                    name("/Ff"): NumberObject(flags),
                })
            ref = writer._add_object(field)
            if "/Annots" not in page:
                page[name("/Annots")] = ArrayObject()
            page["/Annots"].append(ref)
            fields.append(ref)

        writer._root_object[name("/AcroForm")] = DictionaryObject({
            name("/Fields"): fields,
            name("/NeedAppearances"): BooleanObject(True),
            name("/DA"): TextStringObject(f"{FONT} 9 Tf 0 g"),
            name("/DR"): DictionaryObject({name("/Font"): DictionaryObject({name(FONT): font})}),
        })
        with open(output, "wb") as f:
            writer.write(f)
    print(f"  {source.relative_to(ROOT)} -> {output.relative_to(ROOT)} ({len(fields)} fields)")


def main():
    sources = [Path(a).resolve() for a in sys.argv[1:]] or [ROOT / "game" / "hero_sheet.typ"]
    for source in sources:
        make_fillable(source, source.with_suffix(".pdf"))


if __name__ == "__main__":
    main()
