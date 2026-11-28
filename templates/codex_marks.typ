// Entries of the Codex's contents and PDF bookmarks (templates/codex.typ).
//
// The Codex announces the entries of a document before including it (`codex_mark`), and the
// document places them at the top of its first page (`codex_entries`), so that each entry points
// to the right page even when the document sets its own page (rules pages, class sheets, hero
// sheet). Outside the Codex nothing is announced, and nothing is placed.

#let codex_pending = state("codex-pending", ())

// Announce entries: (level, title) pairs, or (level, title, kind) for a group of cards whose
// kind the running band names ("Pool of choices", "Subclass").
#let codex_mark(..entries) = codex_pending.update(p => p + entries.pos())

// Place the announced entries here, as headings the Codex hides, then forget them.
#let codex_entries() = context {
  for entry in codex_pending.get() {
    let (level, title) = (entry.at(0), entry.at(1))
    heading(level: level, supplement: entry.at(2, default: none), title)
  }
} + codex_pending.update(())

// True when compiling the Codex (typst compile --input codex=true).
#let in_codex = sys.inputs.at("codex", default: "false") == "true"

// The page number at the bottom center, in the Codex only.
#let codex_page_number() = if in_codex {
  context {
    let rule = box(width: 10mm, height: 0.4pt, fill: luma(170), baseline: -0.25em)
    text(size: 9pt, fill: luma(80), tracking: 1pt, [#rule#h(2.5mm)#counter(page).display()#h(2.5mm)#rule])
  }
}

// A page footer: the version date at the left, the page number in the middle in the Codex.
#let page_footer(stamp) = grid(columns: (1fr, auto, 1fr), align: (left + horizon, center + horizon, right),
  stamp, codex_page_number(), [])
