// The Codex: the whole game in one PDF (build/nimblium_codex.pdf), to read or to share, not to
// print. A cover, an introduction, the contents, then every rules page, sheet and card, in the
// order tools/export_cards.py writes them (it generates the document that uses this template).
// Cards show their front only (compiled with --input faces=front), 9 per A4 page; each family
// of cards starts a new page. Card names written with #card_ref link to their card.

#import "/templates/style.typ": reminder_color
#import "/templates/creat_frame.typ": card_width, card_height, front_gap
#import "/templates/codex_marks.typ": codex_mark, codex_entries

#let codex_gray = luma(110)

// The path of entries leading to the last one on this page or before it: "Berserker · Rage".
#let breadcrumb() = {
  let here_page = here().page()
  let before = query(heading).filter(h => h.location().page() <= here_page)
  if before.len() == 0 { return none }
  let last = before.last()
  let path = (last,)
  for level in range(last.level - 1, 0, step: -1) {
    let parent = before.filter(h => h.level == level).last(default: none)
    if parent != none { path.insert(0, parent) }
  }
  path.slice(calc.min(1, path.len() - 1)).map(h => h.body).join([ · ])
}

// The page of the Codex's own pages (cards, cover, introduction, contents).
#let codex_doc(body) = {
  set document(title: "Nimblium Codex")
  set page(paper: "a4", margin: (x: 6mm, top: 16mm, bottom: 11mm),
    header: context {
      set text(size: 7pt, tracking: 1.5pt, fill: codex_gray)
      grid(columns: (1fr, auto), upper(breadcrumb()), str(here().page()))
    })
  set text(size: 10pt)
  // Entries are for the contents and the bookmarks: the pages show their own titles.
  show heading: none
  body
}

// The cover: name, subtitle and the date of the most recent change in the game.
#let cover(date: none) = page(header: none, margin: 20mm, align(center + horizon, stack(spacing: 7mm,
  text(size: 44pt, tracking: 12pt, weight: "bold", [NIMBLIUM]),
  text(size: 14pt, tracking: 6pt, fill: codex_gray, [CODEX]),
  v(6mm),
  text(size: 11pt, style: "italic", [A tabletop roleplaying game built on Nimble]),
  if date != none { text(size: 9pt, fill: codex_gray, [Version of #date]) },
)))

// A page of running text with a large title (introduction, contents).
#let text_page(title, body) = page(header: none, margin: (x: 25mm, y: 25mm), {
  text(size: 22pt, tracking: 5pt, upper(title))
  v(8mm)
  set par(justify: true, leading: 0.65em, spacing: 1.2em)
  body
})

#let introduction() = text_page("Introduction")[
  #codex_mark((1, "Introduction"))
  #codex_entries()
  Nimblium is a tabletop roleplaying game built on Nimble. Everything played at the table is on
  a card. Abilities, spells, items, actions and creatures each have their own card, written in
  one language for the whole game, so the same effect always reads the same way.

  The card is enough. What you play is written on its card, and the keywords and conditions it
  uses are reminded at its bottom. The rules pages explain what the cards don't, such as turns,
  checks, rest and magic. Your class sheet says what you gain at each level, and your hero sheet
  keeps what is yours.

  This codex gathers the whole game in one document, to read or to share. It holds the rules
  pages, then the hero sheet, the ancestries, the backgrounds and the actions every hero can
  take. Each class follows, with its class sheet and its cards. Then come the spells by
  school, the items, the creatures for the Game Master, and the Glossary, which defines every
  keyword, condition and abbreviation. Cards are shown by their front only. To play, print the
  cards you need.

  Every card, sheet and page shows at its bottom left the day its text last changed. Of two
  printed copies of the same card, keep the one with the later date.
]

#let contents() = text_page("Contents")[
  #set text(size: 10pt)
  #show outline.entry.where(level: 1): it => { v(3mm, weak: true); strong(it) }
  #outline(title: none, depth: 2, indent: 5mm)
]

// A family of cards: a new page, its entries, then its cards side by side, 3 per row.
#let cards(entries, ..items) = {
  pagebreak(weak: true)
  codex_mark(..entries)
  codex_entries()
  set par(leading: front_gap, spacing: front_gap, justify: false, linebreaks: "simple")
  align(center, block(width: 3 * (card_width + front_gap) + 0.5mm, align(left, items.pos().join())))
}
