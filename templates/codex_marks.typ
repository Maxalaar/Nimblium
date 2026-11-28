// Entries of the Codex's contents and PDF bookmarks (templates/codex.typ).
//
// The Codex announces the entries of a document before including it (`codex_mark`), and the
// document places them at the top of its first page (`codex_entries`), so that each entry points
// to the right page even when the document sets its own page (rules pages, class sheets, hero
// sheet). Outside the Codex nothing is announced, and nothing is placed.

#let codex_pending = state("codex-pending", ())

// Announce entries: (level, title) pairs.
#let codex_mark(..entries) = codex_pending.update(p => p + entries.pos())

// Place the announced entries here, as headings the Codex hides, then forget them.
#let codex_entries() = context {
  for (level, title) in codex_pending.get() { heading(level: level, title) }
} + codex_pending.update(())
