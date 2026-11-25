// Class sheet: one A4 page per class with what a player needs to build the hero
// (stats, starting kit, resource) and the table of what each level gives, from 1 to 20.
// It replaces cards that would only list choices by level (README.txt, global house rules).
// Each class has its sheet in game/class/<class>/<class>_class_sheet.typ; tools/export_cards.py exports it
// next to its source. Rules already on a card are not repeated here: the sheet names the card.

#import "creat_frame.typ": icon_image, ink, hair
#import "/templates/style.typ": reminder_color

#let sheet_tracking = 2pt

// Small capitals label above a value, as on the cards' stat row.
#let info_cell(label, value) = stack(
  spacing: 1.2mm,
  text(size: 6.5pt, tracking: 1.2pt, fill: reminder_color, upper(label)),
  text(size: 9.5pt, value),
)

#let section_title(body) = {
  v(5mm, weak: true)
  text(size: 8pt, tracking: sheet_tracking, weight: "bold", upper(body))
  v(2.5mm)
}

// Features of a subclass, or any list by level: the level on the left.
#let by_level(..rows) = grid(columns: (6mm, 1fr), row-gutter: 1.8mm,
  ..rows.pos().map(((lvl, body)) => (text(weight: "bold", str(lvl)), body)).flatten())

// A stat increase or other minor line of the table, in gray.
#let minor(body) = text(fill: reminder_color, body)

// name: class name. icon: file in art/icons/. intro: one sentence.
// info: ((label, value), ...). resource: content or none.
// levels: 20 entries of (tier, features), tier being none before spells (or always, for a
// class without spells: the Tier column is then hidden).
// boxes: ((title, content), ...) shown side by side under the table.
#let class_sheet(name: "", icon: none, intro: none, info: (), resource: none, levels: (), boxes: ()) = {
  set page(paper: "a4", margin: (x: 14mm, y: 12mm))
  set text(size: 9.5pt)
  set par(leading: 0.45em)

  // Header: icon, name, one sentence.
  grid(columns: (auto, 1fr), column-gutter: 5mm, align: horizon,
    if icon != none { icon_image(icon, 16mm) },
    stack(spacing: 2.5mm,
      text(size: 22pt, tracking: 5pt, upper(name)),
      if intro != none { text(size: 9pt, style: "italic", fill: reminder_color, intro) }),
  )
  v(5mm)

  // Information strip.
  grid(columns: (1fr,) * 4, column-gutter: 4mm, row-gutter: 3.5mm,
    ..info.map(((l, v)) => info_cell(l, v)))
  if resource != none {
    v(3mm)
    block(width: 100%, inset: (x: 3mm, y: 2.2mm), stroke: hair + ink, radius: 1.5mm, resource)
  }

  // Level table.
  v(6mm)
  // The Tier column only shows for spellcasting classes.
  let casts = levels.any(((tier, _)) => tier != none)
  let headers = if casts { ("Lvl", "Tier", "You gain") } else { ("Lvl", "You gain") }
  table(
    columns: if casts { (9mm, 11mm, 1fr) } else { (9mm, 1fr) },
    align: if casts { (center + horizon, center + horizon, left + horizon) } else { (center + horizon, left + horizon) },
    inset: (x: 2mm, y: 2.3mm),
    stroke: (x, y) => (bottom: if y == 0 { 0.6pt + ink } else { hair + luma(190) }),
    fill: (x, y) => if y > 0 and calc.even(y) { luma(246) },
    table.header(..headers.map(h => text(size: 6.5pt, tracking: 1.2pt, weight: "bold", upper(h)))),
    // A tier that goes up is in bold; the others are gray.
    ..levels.enumerate().map(((i, (tier, features))) => {
      let previous = if i == 0 { none } else { levels.at(i - 1).at(0) }
      let tier_cell = if tier == none { minor[—] } else if tier != previous { text(weight: "bold", str(tier)) } else { minor(str(tier)) }
      (
        text(weight: "bold", str(i + 1)),
        ..if casts { (tier_cell,) },
        if features == [] { minor[—] } else { features },
      )
    }).flatten(),
  )

  // Boxes under the table, two by two.
  if boxes.len() > 0 {
    v(2mm)
    grid(columns: (1fr,) * boxes.len(), column-gutter: 6mm,
      ..boxes.map(((title, content)) => block(breakable: false, { section_title(title); content })))
  }
}
