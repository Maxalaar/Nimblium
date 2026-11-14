// Card layout shared by every card type: a clean front (name, types, rules
// text, optional stat row) and a back (optional icon, name, types).
// `creat_card` returns both faces side by side: front on the left, back on
// the right.
#import "../style.typ": reminder_color
#import "family_icons.typ": family_icons, icon_gray

#let card_width = 63mm
#let card_height = 88mm
#let card_gap = 5mm              // space between the front and the back
#let ink = black
#let hair = 0.2pt

#let text_size = 8pt
#let min_text_size = 6pt
#let reminder_size = 0.8125em   // relative to the rules text: 6.5pt at 8pt
#let side_margin = 6mm           // left/right margin of the rules text
#let header_bottom = 15.5mm      // rules text starts below this line
#let stat_row_height = 15mm

// ---------- helpers ----------

// Place `body` centered on the point (x, y) of the card.
#let at(x, y, body) = place(top + left, dx: x - card_width, dy: y - card_height,
  box(width: 2 * card_width, height: 2 * card_height, align(center + horizon, body)))

#let seg(a, b, stroke: hair + ink) = place(top + left, line(start: a, end: b, stroke: stroke))

#let types_text(types) = types.join(" · ")

// Text that shrinks (size and tracking together) until it fits `max_width`.
#let fit_text(body, size: 11pt, tracking: 2pt, max_width: card_width - 18mm, ..args) = context {
  let s = size
  let t = tracking
  while s > 6pt and measure(text(size: s, tracking: t, ..args, body)).width > max_width {
    s -= 0.5pt
    t = tracking * (s / size)
  }
  text(size: s, tracking: t, ..args, body)
}

// Size of the rules text box, which depends on whether the card has a stat row.
#let body_area(has_stats) = {
  let bottom = if has_stats { card_height - stat_row_height } else { card_height - 5mm }
  (card_width - 2 * side_margin, bottom - header_bottom - 3mm)
}

// Gap between two blocks of rules text (abilities, sections, reminders).
// A full card first tightens it down to `min_gap`, then shrinks the text.
#let max_gap = 2em          // = the former 0.8em gap + 1.2em paragraph spacing
#let min_gap = 1.2em
#let gap_step = 0.2em

// Rules text made of several blocks: the gap between them is set by
// `laid_body`, so it can shrink on a full card.
#let join_blocks(parts) = parts.map(p => block(p)).join()

#let laid_body(body, size, gap: max_gap) = {
  set text(size: size)
  set par(leading: 0.4em)
  set block(spacing: gap)
  body
}

// Height of the rules text at a given size and gap. Call inside `context`.
#let body_height(body, width, size, gap: max_gap) = measure(
  block(width: width, laid_body(body, size, gap: gap))).height

// Rules text that fits the given box: the gap between blocks shrinks first,
// down to `min_gap`, then the text size, down to `min_text_size`.
#let fit_body(body, width, height) = context {
  let s = text_size
  let g = max_gap
  while g > min_gap and body_height(body, width, s, gap: g) > height {
    g -= gap_step
  }
  while s > min_text_size and body_height(body, width, s, gap: g) > height {
    s -= 0.25pt
  }
  laid_body(body, s, gap: g)
}

// Sci-fi HUD corner brackets.
#let corners(inset: 4mm, len: 3mm) = {
  let s = 0.5pt + ink
  let (l, r, t, b) = (inset, card_width - inset, inset, card_height - inset)
  seg((l, t), (l + len, t), stroke: s); seg((l, t), (l, t + len), stroke: s)
  seg((r, t), (r - len, t), stroke: s); seg((r, t), (r, t + len), stroke: s)
  seg((l, b), (l + len, b), stroke: s); seg((l, b), (l, b - len), stroke: s)
  seg((r, b), (r - len, b), stroke: s); seg((r, b), (r, b - len), stroke: s)
}

// White card with a rounded black border.
#let card_frame(body) = box(width: card_width, height: card_height, clip: true, radius: 2.5mm, {
  place(rect(width: card_width, height: card_height, radius: 2.5mm, fill: white))
  body
  place(rect(width: card_width, height: card_height, radius: 2.5mm, stroke: 1mm + ink))
})

#let reminders(items) = text(size: reminder_size, fill: reminder_color, items.join(v(0.3em)))

// ---------- icons ----------

// A bare file name is looked up in art/icons/; a path starting with "/" is
// taken from the project root.
#let icons_dir = "/art/icons/"
#let icon_path(icon) = if icon.starts-with("/") { icon } else { icons_dir + icon }

// SVG icons are drawn in `icon_gray` (their black is recolored); other images
// are shown as they are.
#let icon_image(icon, width) = {
  let path = icon_path(icon)
  if path.ends-with(".svg") {
    image(bytes(read(path).replace("#000", icon_gray)), format: "svg", width: width)
  } else {
    image(path, width: width)
  }
}

// Icon of the most specific type of the card found in `family_icons`.
#let family_icon(types) = {
  let found = types.rev().filter(t => type(t) == str and t in family_icons)
  if found.len() > 0 { family_icons.at(found.first()) } else { none }
}

// ---------- faces ----------

// `stats` is a list of (label, value) shown in a row at the bottom.
#let card_front(name, types, body, stats: ()) = card_frame({
  corners()
  let cx = card_width / 2
  at(cx, 8.3mm, fit_text(upper(name), size: 11pt, tracking: 1.8pt, weight: "bold"))
  at(cx, 12.4mm, text(size: 4.5pt, tracking: 1.1pt, upper(types_text(types))))

  let bottom = if stats.len() > 0 { card_height - stat_row_height } else { card_height - 5mm }
  let (w, h) = body_area(stats.len() > 0)
  place(top + left, dx: side_margin, dy: header_bottom + 1.5mm,
    box(width: w, height: h, align(left + horizon, fit_body(body, w, h))))

  if stats.len() > 0 {
    let rule_in = 14mm
    let span = card_width - 2 * rule_in
    let n = stats.len()
    for (i, (label, value)) in stats.enumerate() {
      let x = rule_in + span * (i + 0.5) / n
      at(x, bottom + 3.5mm, text(size: 5pt, weight: "bold", tracking: 1.2pt, upper(label)))
      at(x, bottom + 7.8mm, text(size: 11pt, weight: "bold", value))
      if i > 0 {
        let xs = rule_in + span * i / n
        seg((xs, bottom + 2mm), (xs, bottom + 10mm))
      }
    }
  }
})

// Without an icon, the name and types sit in the middle of the card.
#let card_back(name, types, icon: none) = card_frame({
  corners(inset: 5mm, len: 4mm)
  let cx = card_width / 2
  let name_y = if icon == none { card_height / 2 - 2mm } else { 65mm }
  if icon != none { at(cx, 34mm, icon_image(icon, 38mm)) }
  at(cx, name_y, fit_text(upper(name), size: 15pt, tracking: 3pt, weight: "bold",
                          max_width: card_width - 12mm))
  at(cx, name_y + 6.5mm, text(size: 6pt, tracking: 1.5pt, upper(types_text(types))))
})

// Both faces of a card, front on the left and back on the right.
// `part` ("1/2", "2/2") is added to the types of a card split in two.
// The family icon comes from the types (see family_icons.typ); `icon`
// replaces it on the back only.
#let creat_card(name, types, body, stats: (), back_types: none, icon: none, part: none) = {
  let extra = if part == none { () } else { (part,) }
  box(grid(columns: 2, column-gutter: card_gap,
    card_front(name, types + extra, body, stats: stats),
    card_back(name, (if back_types == none { types } else { back_types }) + extra,
              icon: if icon == none { family_icon(types) } else { icon })))
}

// Stat values may be numbers, strings or content.
#let stat_value(v) = if type(v) == int or type(v) == float { str(v) } else { v }
