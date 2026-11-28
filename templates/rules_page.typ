// Rules page: one A4 sheet per area of the game (Adventure, Combat, Magic),
// printed recto, or recto-verso when the text needs it (#verso in the body).
// Each page lives in game/rules/<area>.typ; tools/export_cards.py exports it to build/game/rules/.
// Rules already on a card are not repeated here: the page names the card (#card_ref).

#import "class_sheet.typ": sheet_tracking
#import "/templates/style.typ": reminder_color
#import "/templates/table.typ": game_table
#import "/templates/version.typ": version_stamp
#import "/templates/codex_marks.typ": codex_entries, document_footer, page_margin, footer_descent

// Title of a section: centered small capitals in a gray band across the column, as the tabs of
// the hero sheet. Title of a subsection: the same, slightly smaller, in a lighter band.
#let section_title(title) = block(width: 100%, fill: luma(205), radius: 1mm,
  inset: (x: 2.2mm, y: 1.8mm), below: 2mm,
  align(center, text(size: 8.5pt, tracking: sheet_tracking, weight: "bold", fill: luma(30), upper(title))))
#let subsection_title(title) = block(width: 100%, fill: luma(232), radius: 1mm,
  inset: (x: 2mm, y: 1.3mm), below: 1.8mm,
  align(center, text(size: 7pt, tracking: 1.5pt, weight: "bold", fill: luma(70), upper(title))))

// A section: its title, then its text. It never splits across columns.
#let section(title, body) = block(breakable: false, width: 100%, above: 6mm, below: 6mm, {
  section_title(title)
  body
})

// A section made of subsections: only its title and an optional opening paragraph. They stay
// with the first subsection (sticky), and each subsection can go to the next column on its own.
#let part(title, intro: none) = block(sticky: true, width: 100%, above: 6mm, below: 4mm, {
  section_title(title)
  if intro != none { intro }
})

// A subsection, inside a part: its title in a capsule, then its text. It never splits across
// columns.
#let subsection(title, body) = block(breakable: false, width: 100%, above: 4.5mm, below: 4.5mm, {
  subsection_title(title)
  body
})

// A rule named in bold at the start of its paragraph: "Catch Breath. Spend 10 minutes...".
#let rule(name, body) = par[*#name.* #body]

// An example or a table note, in gray and smaller.
#let example(body) = text(size: 8.5pt, fill: reminder_color, body)

// A small table of values: header row in small capitals, light rules between rows.
#let values(columns: (1fr, auto), header: none, inset: 1.6mm, ..cells) = game_table(
  columns: columns, header: header, inset: (x: 1.5mm, y: inset), ..cells)

// Start of the verso (second side of the sheet).
#let verso = pagebreak()

// name: area of the game. intro: one sentence. body: the sections, in two columns.
// reminder: the keyword and condition definitions the page uses, shown once at its end (no line above),
// in the order given (by name), in gray like a card's reminders.
#let rules_page(name: "", intro: none, reminder: (), body) = {
  set page(paper: "a4", margin: page_margin, columns: 2, header: none,
    footer-descent: footer_descent,
    footer: document_footer(name, version_stamp("Rules: " + name, size: 6.5pt)))
  set columns(gutter: 7mm)
  set text(size: 9.5pt)
  set par(leading: 0.45em, spacing: 0.9em, justify: false)

  codex_entries()
  place(top, float: true, scope: "parent", clearance: 6mm, stack(spacing: 2.5mm,
    text(size: 22pt, tracking: 5pt, upper(name)),
    if intro != none { text(size: 9pt, style: "italic", fill: reminder_color, intro) }))

  body

  if reminder.len() > 0 {
    block(width: 100%, above: 6mm, {
      set par(spacing: 0.7em)
      text(size: 8pt, fill: reminder_color,
        reminder.join(parbreak()))
    })
  }
}
