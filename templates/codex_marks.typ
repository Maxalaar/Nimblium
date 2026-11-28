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

// The bottom margin of a page with a centered footer (rules pages, Codex), and where the footer
// sits in it: the same everywhere, so the footers line up.
#let footer_margin = 15mm
#let footer_descent = 18%
// The margins of the rules pages and of the Codex's pages, the same in both.
#let page_margin = (x: 12mm, top: 12mm, bottom: footer_margin)

// True when compiling the Codex (typst compile --input codex=true).
#let in_codex = sys.inputs.at("codex", default: "false") == "true"

// The page out of the total, between two rules: "—— 37/113 ——".
#let page_of_total() = context {
  let rule = box(width: 8mm, height: 0.4pt, fill: luma(170), baseline: -0.3em)
  text(size: 9pt, fill: luma(60), tracking: 1pt)[#rule#h(2.5mm)#counter(page).display()/#counter(page).final().first()#h(2.5mm)#rule]
}

// The Codex's date: the most recent version date of the game, as on its cover.
#let codex_date = {
  let dates = json("/versions.json").values().map(v => v.date).sorted()
  if dates.len() > 0 { dates.last() }
}

// The footer of every page of the Codex, as on the rules pages: "Codex", its page out of its
// total, and its date below, on three centered lines. The pages it includes take it too.
#let codex_footer(stamp: none) = align(center, stack(spacing: 1.3mm,
  text(size: 7pt, tracking: 1.5pt, fill: luma(90), upper("Codex")),
  page_of_total(),
  text(size: 6.5pt, fill: luma(105), codex_date),
))

// The page number at the bottom center, in the Codex only.
#let codex_page_number() = if in_codex { codex_footer() }

// The footer of an A4 document printed alone, centered on three lines: its name, its page out of
// its total, then its version date, so that a printed page shows which document it belongs to and
// whether one is missing. In the Codex, the Codex's footer replaces it.
#let document_footer(name, stamp) = if in_codex { codex_footer(stamp: stamp) } else {
  align(center, stack(spacing: 1.3mm,
    text(size: 7pt, tracking: 1.5pt, fill: luma(90), upper(name)),
    page_of_total(),
    stamp,
  ))
}

// A page footer: the version date at the left; in the Codex, the Codex's footer.
#let page_footer(stamp) = if in_codex { codex_footer(stamp: stamp) } else { align(left, stamp) }
