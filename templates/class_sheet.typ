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

// A five-pointed star, filled or outlined, drawn so both kinds have the same size.
#let star(filled, size: 3.6mm) = {
  let pts = range(10).map(i => {
    let r = if calc.even(i) { size / 2 } else { size / 5 }
    let a = -90deg + i * 36deg
    (size / 2 + r * calc.cos(a), size / 2 + r * calc.sin(a))
  })
  box(width: size, height: size, baseline: 20%, place(polygon(
    fill: if filled { ink } else { none },
    stroke: 0.6pt + ink,
    ..pts)))
}

// Difficulty: 1 to 3 stars and a word.
#let difficulty_value(n) = box(inset: (top: 0.6mm), range(3).map(i => star(i < n)).join(h(0.8mm)))

// A subclass that isn't open to everyone at level 3 (the GM unlocks it): a padlock before
// its title.
#let locked(title) = [#box(baseline: 12%, icon_image("padlock.svg", 2.8mm)) #h(1mm) #title]

// name: class name. icon: file in art/icons/. intro: one sentence.
// info: ((label, value), ...). resource: content or none.
// levels: 20 entries of (tier, features), tier being none before spells (or always, for a
// class without spells: the Tier column is then hidden).
// boxes: ((title, content), ...) shown side by side under the table.
#let class_sheet(name: "", icon: none, intro: none, difficulty: none, description: none, info: (), every_level: none, resource: none, levels: (), boxes: ()) = {
  set page(paper: "a4", margin: (x: 14mm, y: 12mm))
  set text(size: 9.5pt)
  set par(leading: 0.45em)

  // Header: icon, name, and under the name how the class plays (gray italics), or its old
  // one-sentence intro.
  let new_layout = description != none or difficulty != none
  grid(columns: (auto, 1fr), column-gutter: 6mm, align: horizon,
    if icon != none { icon_image(icon, if new_layout { 24mm } else { 16mm }) },
    stack(spacing: 1.8mm,
      text(size: 24pt, tracking: 6pt, upper(name)),
      if description != none {
        par(justify: true, leading: 0.6em, text(size: 9.5pt, style: "italic", fill: reminder_color, description))
      } else if intro != none { text(size: 9pt, style: "italic", fill: reminder_color, intro) }),
  )
  v(2.5mm)

  // Information strip, on one line: Difficulty first when the sheet gives it.
  let facts = if difficulty != none { (("Difficulty", difficulty_value(difficulty)),) + info } else { info }
  grid(columns: (auto,) * facts.len(), column-gutter: 1fr,
    ..facts.map(((l, v)) => info_cell(l, v)))
  if resource != none {
    v(3mm)
    block(width: 100%, inset: (x: 3mm, y: 2.2mm), stroke: hair + ink, radius: 1.5mm, resource)
  }

  // Level table, with what every level gives as its first row.
  v(if new_layout { 2.5mm } else { 6mm })

  // The Tier column only shows for spellcasting classes.
  let casts = levels.any(((tier, _)) => tier != none)
  let headers = if casts { ("Lvl", "Tier", "You gain") } else { ("Lvl", "You gain") }
  table(
    columns: if casts { (9mm, 11mm, 1fr) } else { (9mm, 1fr) },
    align: if casts { (center + horizon, center + horizon, left + horizon) } else { (center + horizon, left + horizon) },
    inset: (x: 2mm, y: if new_layout { 1.9mm } else { 2.3mm }),
    stroke: (x, y) => (bottom: if y == 0 { 0.6pt + ink } else { hair + luma(190) }),
    fill: (x, y) => if y > 0 and calc.even(y) { luma(246) },
    table.header(..headers.map(h => text(size: 6.5pt, tracking: 1.2pt, weight: "bold", upper(h)))),
    // What every level gives, as a first row.
    ..if every_level != none { (text(weight: "bold")[All], ..if casts { (minor[—],) }, every_level) },
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
