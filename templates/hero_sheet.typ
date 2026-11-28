// Hero sheet: the one A4 page a player fills in for their hero, on paper or in a PDF reader.
// It holds what changes from hero to hero (stats, skills, HP, equipment, what was chosen at
// each level); the rules stay on the cards, the class sheets and the rules pages.
// Grays only, no large dark areas: the sheet is made to be printed.
//
// Every writing area is also a form field: `form` leaves invisible <form-field> markers in the
// area's corners, and tools/fillable_pdf.py turns them into the fields of the PDF.
// The sheet lives in game/hero_sheet.typ.

#import "creat_frame.typ": hair
#import "/templates/style.typ": reminder_color
#import "/templates/table.typ": game_table
#import "/templates/version.typ": version_stamp

#let dark = luma(45)           // text of bands and tabs
#let line_color = luma(130)    // frames and shapes
#let band_fill = luma(222)     // bands and tabs
#let well = luma(244)          // background of a value to fill in
#let rule_gray = luma(185)
#let skill_strip = luma(234)     // skill rows joined to their stat, alternating
#let skill_strip_alt = luma(246)
#let frame = 0.7pt + line_color

#let label(body, fill: reminder_color) = text(size: 6pt, tracking: 1.1pt, fill: fill, upper(body))
#let strong_label(body) = text(size: 6.5pt, tracking: 1.4pt, weight: "bold", fill: dark, upper(body))

// ---------------------------------------------------------------------------------------------
// Form fields

// Marks the area it fills as a form field: a marker in its top left corner and one in its bottom
// right corner (tools/fillable_pdf.py joins them). kind: "text" or "check" (check: "square" or
// "circle"). align: "left", "center" or "right". size: font size in pt.
#let form(name, kind: "text", align: "left", multiline: false, size: 9, check: "square") = {
  let marker(corner) = context {
    let p = here().position()
    [#metadata((name: name, corner: corner, kind: kind, align: align, multiline: multiline,
      size: size, check: check, page: p.page, x: p.x.pt(), y: p.y.pt())) <form-field>]
  }
  place(top + left, marker("start"))
  place(bottom + right, marker("end"))
}

// A value to fill in, on a light gray background (or white, over a shape).
#let entry(name, width: 100%, height: 6mm, align: "left", size: 9, fill: well, stroke: none) = box(
  width: width, height: height, fill: fill, stroke: stroke, radius: 1mm,
  form(name, align: align, size: size))

// A square or a circle to tick.
#let tick(name, size: 3mm, shape: "square", weight: 0.6pt) = box(width: size, height: size, baseline: 15%, {
  if shape == "circle" { circle(radius: size / 2, stroke: weight + line_color) }
  else { rect(width: size, height: size, radius: 0.5mm, stroke: weight + line_color) }
  place(top + left, box(width: size, height: size, form(name, kind: "check", check: shape)))
})

#let labeled(name, field_name, height: 6mm, align: "left", size: 9) = stack(spacing: 1mm,
  label(name), entry(field_name, height: height, align: align, size: size))

// "current / max", for a resource.
#let current_max(prefix, height: 6mm, size: 10) = grid(columns: (1fr, auto, 1fr), column-gutter: 1.2mm, align: horizon,
  entry(prefix + "_current", height: height, align: "center", size: size),
  text(size: 11pt, fill: reminder_color)[/],
  entry(prefix + "_max", height: height, align: "center", size: size))

// ---------------------------------------------------------------------------------------------
// Layout pieces

// A panel: a framed area whose title sits in a gray tab on its top border.
#let panel(title, body) = block(
  width: 100%, stroke: frame, radius: 2mm, inset: (x: 3mm, top: 5mm, bottom: 3mm), {
    place(top + left, dx: -0.6mm, dy: -5mm - 2.6mm, box(fill: band_fill, radius: 1mm, inset: (x: 2.2mm, y: 1.4mm),
      text(size: 7pt, tracking: 2pt, weight: "bold", fill: dark, upper(title))))
    body
  })

// A boxed value whose name is in a gray band at the bottom (as for stats in the book).
// field_name none: the body is shown above the band instead of a field.
#let banded(name, field_name, height: 17mm, band: 5mm, name_size: 6.5pt, value_size: 14, corner: none, body: none) = block(
  width: 100%, height: height, stroke: frame, radius: 1.5mm, clip: true, {
    if corner != none { place(top + right, dx: -1.2mm, dy: 1.2mm, corner) }
    let top_room = if corner != none { 4.6mm } else { 1.5mm }
    place(top + center, dy: top_room, box(width: 100% - 3mm, height: height - top_room - band - 1.5mm,
      if field_name == none { align(center + horizon, body) }
      else { entry(field_name, height: 100%, align: "center", size: value_size) }))
    place(bottom, block(width: 100%, height: band, fill: band_fill,
      align(center + horizon, text(fill: dark, weight: "bold", size: name_size, tracking: 1.3pt, upper(name)))))
  })

// The skill table's two value columns: the skill's own value, then the total rolled with it
// (the stat plus the skill). Both boxes look the same. The header and every row share these
// widths, so the labels sit exactly over their boxes.
#let skill_col = 9mm
#let total_col = 9mm
#let value_gap = 1.8mm
#let strip_inset = (left: 3.5mm, right: 2mm)

// A small white box to fill in: a skill, a total, the points to spend. They all look the same.
#let small_box(name) = entry(name, height: 4.6mm, align: "center", size: 9.5, fill: white, stroke: 0.4pt + line_color)

// The skill table grid of one stat: a name, then its two values.
#let skill_grid(..args) = grid(
  columns: (1fr, skill_col, total_col), column-gutter: (0mm, value_gap),
  align: (left + horizon, center + horizon, center + horizon), ..args)

// A stat and the skills that use it: the skills are the rows of a small table next to the
// stat's box, in alternating grays.
#let stat_row(stat, skills, row: 5.6mm) = {
  let id = lower(stat)
  let height = calc.max(16mm, skills.len() * row)
  let cell(body) = box(width: 100%, height: height / skills.len(), inset: strip_inset, align(horizon, body))
  grid(columns: (17mm, 1fr), column-gutter: 1.8mm,
    banded(stat, "stat_" + id, height: height, name_size: 9pt, value_size: 14,
      corner: [#text(size: 5pt, tracking: 0.6pt, fill: reminder_color)[KEY] #h(0.3mm) #tick("key_" + id, size: 2.6mm)]),
    block(width: 100%, height: height, radius: 1.5mm, clip: true, stack(
      ..skills.enumerate().map(((i, s)) => block(width: 100%, height: height / skills.len(),
        fill: if calc.even(i) { skill_strip } else { skill_strip_alt }, inset: strip_inset,
        skill_grid(rows: height / skills.len(),
          text(size: 8.5pt, s),
          small_box("skill_" + lower(s)),
          small_box("total_" + lower(s))))))),
  )
}

// The labels over the two value columns of the skill tables.
#let skill_header = grid(columns: (17mm, 1fr), column-gutter: 1.8mm, [],
  block(width: 100%, inset: strip_inset, skill_grid([], label[Skill], label[Total])))

// The stat and skill points not spent yet, kept from one level to the next.
#let points_row = stack(spacing: 1mm,
  label[Points to spend],
  grid(columns: (1fr, 1fr), column-gutter: 3mm,
    ..(("Stat points", "stat_points"), ("Skill points", "skill_points")).map(((name, id)) =>
      block(width: 100%, height: 7.5mm, fill: skill_strip, radius: 1.5mm, inset: (x: 3mm),
        grid(columns: (1fr, total_col), align: (left + horizon, center + horizon), rows: 7.5mm,
          text(size: 8.5pt, name),
          small_box(id))))))

// A table to fill in (Equipment, Levels): labels in its header, zebra rows, a light line between
// columns. cells: for each row, its cells (content, or a field name as a string).
#let sheet_table(columns: (), header: (), row_height: 6mm, aligns: none, rows: ()) = game_table(
  columns: columns,
  rows: (auto,) + (row_height,) * rows.len(),
  align: if aligns != none { aligns } else { left + horizon },
  inset: 0mm,
  column_lines: true,
  header: header.map(h => box(inset: (x: 1.5mm, bottom: 1.2mm), label(h))),
  ..rows.map(cells => cells.map(c => if type(c) == str {
    box(width: 100%, height: 100%, inset: (x: 1.5mm), form(c, size: 8.5))
  } else { c })).flatten(),
)

// ---------------------------------------------------------------------------------------------
// The sheet

// stats: ((stat, (skill, ...)), ...). equipment: number of lines of the equipment list.
// What each value is worth is on the Adventure page, not on the sheet.
#let hero_sheet(stats: (), equipment: 14) = {
  set page(paper: "a4", margin: (x: 12mm, y: 10mm),
    footer: align(left, version_stamp("Hero sheet", size: 6pt)))
  set text(size: 9pt)
  set par(leading: 0.45em)

  // Header ------------------------------------------------------------------------------------
  grid(columns: (1fr, auto), align: bottom,
    text(size: 8pt, tracking: 6pt, weight: "bold", fill: dark)[NIMBLIUM],
    text(size: 6pt, tracking: 1.5pt, fill: reminder_color)[HERO SHEET])
  v(-1.5mm)
  line(length: 100%, stroke: 0.6pt + line_color)
  v(1mm)
  grid(columns: (1fr, 19mm, 17mm, 17mm), column-gutter: (5mm, 2mm, 2mm), align: bottom,
    stack(spacing: 2.5mm,
      grid(columns: (1fr, 48mm), column-gutter: 4mm,
        labeled("Hero", "hero_name", height: 8.5mm, size: 15),
        labeled("Player", "player_name", height: 8.5mm, size: 11)),
      grid(columns: (1fr,) * 4, column-gutter: 3mm,
        labeled("Class", "class"), labeled("Subclass", "subclass"),
        labeled("Ancestry", "ancestry"), labeled("Background", "background"))),
    banded("Level", "level", height: 23mm, value_size: 18),
    banded("Vitality", "vitality", height: 23mm, name_size: 6pt, value_size: 14),
    banded("Size", "size", height: 23mm, value_size: 9),
  )
  v(6mm)

  // Body: narrative and equipment on the left, combat and levels on the right -----------------
  grid(columns: (74mm, 1fr), column-gutter: 5mm,
    // Left column.
    stack(spacing: 6mm,
      panel("Narrative", {
        stack(points_row, v(2.2mm), skill_header, v(1.2mm),
          stack(spacing: 1.8mm, ..stats.map(((stat, skills)) => stat_row(stat, skills))))
      }),
      panel("Equipment", {
        grid(columns: (1fr, 1fr), column-gutter: 4mm, row-gutter: 2.5mm,
          stack(spacing: 1mm, label[Slots used], current_max("slots")),
          stack(spacing: 1mm, label[Magic items], current_max("magic_items")),
          labeled("Armor", "armor", height: 5.5mm), labeled("Shield", "shield", height: 5.5mm))
        v(1mm)
        sheet_table(columns: (12mm, 1fr), header: ("Slots", "Item"), row_height: 6.102mm,
          rows: range(1, equipment + 1).map(i => ("item_" + str(i) + "_slots", "item_" + str(i))))
      }),
    ),

    // Right column.
    stack(spacing: 6mm,
      panel("Combat", {
        // HP (temporary HP included), Defense, Initiative, Speed.
        grid(columns: (1fr, 18mm, 18mm, 18mm), column-gutter: 2mm,
          block(width: 100%, height: 27mm, stroke: frame, radius: 1.5mm, clip: true, inset: (x: 2mm, top: 1.6mm), {
            grid(columns: (1fr, auto, 1fr), column-gutter: 1.5mm, row-gutter: 0.8mm, align: horizon,
              label[Current], [], label[Max],
              entry("hp_current", height: 7mm, align: "center", size: 15),
              text(size: 13pt, fill: reminder_color)[/],
              entry("hp_max", height: 7mm, align: "center", size: 12))
            v(1.6mm)
            grid(columns: (auto, 1fr), column-gutter: 2mm, align: horizon,
              label[Temp HP], entry("hp_temp", height: 4.8mm, align: "center"))
            place(bottom, dx: -2mm, block(width: 100% + 4mm, height: 5mm, fill: band_fill,
              align(center + horizon, text(fill: dark, weight: "bold", size: 7pt, tracking: 1.5pt)[HIT POINTS])))
          }),
          banded("Defense", "defense", height: 27mm),
          banded("Initiative", "initiative", height: 27mm, name_size: 5.8pt),
          banded("Speed", "speed", height: 27mm),
        )
        v(2.5mm)
        // Mana, two class resources, Wounds.
        grid(columns: (1fr, 1fr, 1fr, 18mm), column-gutter: 2mm,
          ..(("Mana", "mana", false), ("Resource", "resource_1", true), ("Resource", "resource_2", true)).map(((name, id, named)) =>
            // A class resource has a name to write (Fury Dice, Mom...); Mana has its own.
            block(width: 100%, height: 19mm, stroke: frame, radius: 1.5mm, inset: 1.8mm, stack(spacing: 1.2mm,
              label(if named { name } else { [] }),
              if named { entry(id + "_name", height: 4.6mm, size: 8) }
              else { box(height: 4.6mm, align(horizon, strong_label(name))) },
              current_max(id, height: 6mm)))),
          banded("Wounds", none, height: 19mm, band: 4.6mm, name_size: 5.8pt, body: grid(
            columns: 3, gutter: 1.2mm,
            ..range(1, 7).map(i => tick("wound_" + str(i), size: 3.3mm, shape: "circle",
              weight: if i == 6 { 1.3pt } else { 0.6pt })))),
        )
      }),
      panel("Levels", {
        sheet_table(columns: (8mm, 1fr), header: ("Lvl", "Gained and chosen"), row_height: 7.4mm,
          aligns: (center + horizon, left + horizon),
          rows: range(1, 21).map(l => (text(weight: "bold", size: 8.5pt, fill: dark, str(l)),
            "level_" + str(l))))
      }),
    ),
  )
}
