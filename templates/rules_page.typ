// Rules page: one A4 sheet per area of the game (Adventure, Combat, Magic),
// printed recto, or recto-verso when the text needs it (#verso in the body).
// Each page lives in game/rules/<area>.typ; tools/export_cards.py exports it next to its source.
// Rules already on a card are not repeated here: the page names the card (#card_ref).

#import "creat_frame.typ": ink, hair
#import "class_sheet.typ": sheet_tracking
#import "/templates/style.typ": reminder_color

// A section: its title in small capitals, then its text. It never splits across columns.
#let section(title, body) = block(breakable: false, width: 100%, above: 6mm, below: 6mm, {
  text(size: 8pt, tracking: sheet_tracking, weight: "bold", upper(title))
  v(1mm)
  body
})

// A rule named in bold at the start of its paragraph: "Catch Breath. Spend 10 minutes...".
#let rule(name, body) = par[*#name.* #body]

// An example or a table note, in gray and smaller.
#let example(body) = text(size: 8.5pt, fill: reminder_color, body)

// A small table of values: header row in small capitals, light rules between rows.
#let values(columns: (1fr, auto), header: none, ..cells) = table(
  columns: columns,
  inset: (x: 1.5mm, y: 1.6mm),
  stroke: (x, y) => (bottom: if header != none and y == 0 { 0.6pt + ink } else { hair + luma(190) }),
  ..if header != none { (table.header(..header.map(h => text(size: 6.5pt, tracking: 1.2pt, weight: "bold", upper(h)))),) },
  ..cells,
)

// Start of the verso (second side of the sheet).
#let verso = pagebreak()

// name: area of the game. intro: one sentence. body: the sections, in two columns.
#let rules_page(name: "", intro: none, body) = {
  set page(paper: "a4", margin: (x: 14mm, y: 12mm), columns: 2)
  set columns(gutter: 7mm)
  set text(size: 9.5pt)
  set par(leading: 0.45em, spacing: 0.9em, justify: false)

  place(top, float: true, scope: "parent", clearance: 6mm, stack(spacing: 2.5mm,
    text(size: 22pt, tracking: 5pt, upper(name)),
    if intro != none { text(size: 9pt, style: "italic", fill: reminder_color, intro) }))

  body
}
