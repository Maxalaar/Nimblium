// The game's table, used by default for every table (rules pages, class sheets, hero sheet):
// a header row in small capitals over a dark line, light lines between rows, and every other
// row on a light gray. Use it instead of a bare `table(...)`.
//
// header: labels of the header row (a string is set in small capitals; content is kept as
// it is), or none. align: one alignment for every cell, or one per column. inset: space around
// the text of a cell. rows: row heights (auto by default). column_lines: a light line between
// columns too (tables to fill in).

#import "creat_frame.typ": ink, hair

#let table_stripe = luma(246)
#let table_line = luma(190)

#let table_label(body) = text(size: 6.5pt, tracking: 1.2pt, weight: "bold", upper(body))

#let game_table(columns: (1fr,), header: none, align: left + horizon, inset: (x: 1.5mm, y: 1.6mm),
  rows: auto, column_lines: false, ..cells) = {
  let first_body_row = if header != none { 1 } else { 0 }
  table(
    columns: columns,
    rows: rows,
    align: align,
    inset: inset,
    stroke: (x, y) => (
      bottom: if header != none and y == 0 { 0.6pt + ink } else { hair + table_line },
      left: if column_lines and x > 0 and y >= first_body_row { hair + table_line },
    ),
    fill: (x, y) => if y >= first_body_row and calc.odd(y - first_body_row) { table_stripe },
    ..if header != none {
      (table.header(..header.map(h => if type(h) == str { table_label(h) } else { h })),)
    },
    ..cells,
  )
}
