// Card layout shared by every card type: a clean front (name, types, rules
// text, optional stat row) and a back (optional icon, name, types).
// `creat_card` returns both faces side by side: front on the left, back on
// the right.
#import "/templates/style.typ": reminder_color
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
#let types_bottom = 13.2mm       // bottom of the types (one line), below the name
#let body_bottom = card_height - 6.5mm  // rules text ends above this line
#let front_icon_size = 6mm       // icon at the bottom center of the front
#let front_icon_y = card_height - 5mm   // its center, a little above the line of the bottom corners
#let front_icon_gap = 1.5mm      // between the rules text and that icon

// Bottom of the rules text: higher when the front shows an icon.
#let body_end(has_icon) = if has_icon { front_icon_y - front_icon_size / 2 - front_icon_gap } else { body_bottom }
#let stat_height = 7mm           // one line of stats: labels and values

// ---------- helpers ----------

// Place `body` centered on the point (x, y) of the card.
#let at(x, y, body) = place(top + left, dx: x - card_width, dy: y - card_height,
  box(width: 2 * card_width, height: 2 * card_height, align(center + horizon, body)))

#let seg(a, b, stroke: hair + ink) = place(top + left, line(start: a, end: b, stroke: stroke))

// Types joined by " · ". A long list wraps only after a dot, never inside a
// type ("Tier 5" stays whole).
#let types_text(types) = (types
  .map(t => if type(t) == str { t.replace(" ", "\u{00A0}") } else { t })
  .join("\u{00A0}· "))

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

// Gaps of the header, (widest, tightest). A full card tightens them together
// with the gaps between blocks of rules text, before shrinking the text.
#let above_stats = (1.5mm, 1.5mm)  // types -> first line of stats (fixed)
#let between_stats = (1.5mm, 1mm)  // between two lines of stats (a rule in the middle)
#let below_stats = (4mm, 1.5mm)  // last line of stats -> rules text
#let no_stats = (4mm, 2mm)       // types -> rules text, on a card without stats

// A gap tightened by `f`, from 0 (widest) to 1 (tightest).
#let tighten(gap, f) = gap.at(0) + (gap.at(1) - gap.at(0)) * f

// Top of the line of stats `i`.
// `extra` is the height the types take beyond one line, when they wrap.
#let stat_top(i, f, extra: 0mm) = types_bottom + extra + tighten(above_stats, f) + i * (stat_height + tighten(between_stats, f))

// Top of the rules text box, below the stats (0, 1 or 2 lines).
#let body_top(lines, f, extra: 0mm) = if lines == 0 { types_bottom + extra + tighten(no_stats, f) } else {
  stat_top(lines - 1, f, extra: extra) + stat_height + tighten(below_stats, f)
}

// Size of the rules text box, with the header gaps at their tightest.
#let body_area(lines, has_icon: false) = (card_width - 2 * side_margin, body_end(has_icon) - body_top(lines, 1))

// Gap between two blocks of rules text (abilities, sections, reminders).
// A full card first tightens it down to `min_gap`, then shrinks the text.
#let max_gap = 2em          // = the former 0.8em gap + 1.2em paragraph spacing
#let min_gap = 1.2em
#let gap_step = 0.2em

// Rules text made of several blocks: the gap between them is set by
// `laid_body`, so it can shrink on a full card.
#let join_blocks(parts) = parts.map(p => block(p)).join()

// Paragraphs inside a block (the reminders, a long mechanic) are spaced by a
// share of the block gap, so they tighten together with it on a full card.
#let par_share = 0.6

#let laid_body(body, size, gap: max_gap) = {
  set text(size: size)
  set par(leading: 0.4em, spacing: gap * par_share)
  set block(spacing: gap)
  body
}

// Height of the rules text at a given size and gap. Call inside `context`.
#let body_height(body, width, size, gap: max_gap) = measure(
  block(width: width, laid_body(body, size, gap: gap))).height

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

// Reminders are paragraphs: their spacing follows the block gap (see laid_body).
#let reminders(items) = text(size: reminder_size, fill: reminder_color, items.join(parbreak()))

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

// A line of stats: a small label above each value, thin rules between them.
#let stat_line(stats, size: 10pt, pad: 2.8mm) = grid(
  columns: stats.len(),
  align: center + horizon,
  inset: (x: pad, y: 0pt),
  stroke: (x, y) => if x > 0 { (left: hair + ink) },
  ..stats.map(((label, value)) => stack(spacing: 1.6mm,
    text(size: 5pt, weight: "bold", tracking: 1.2pt, upper(label)),
    text(size: size, weight: "bold", value))))

#let stat_max_width = card_width - 2 * side_margin
#let stat_min_size = 8pt

// Padding and value size that fit `stats` on one line, the values going no
// lower than `min_size` (none if it still doesn't fit). Call inside `context`.
#let stat_fit(stats, min_size: stat_min_size) = {
  let (s, pad) = (10pt, 2.8mm)
  let width(s, pad) = measure(stat_line(stats, size: s, pad: pad)).width
  while pad > 1.2mm and width(s, pad) > stat_max_width { pad -= 0.2mm }
  while s > min_size and width(s, pad) > stat_max_width { s -= 0.5pt }
  if width(s, pad) > stat_max_width { none } else { (s, pad) }
}

// The stats as lines: one line if it fits, otherwise two, cut at `cut`
// (the middle by default). Call inside `context`.
#let stat_lines(stats, cut: none) = {
  if stats.len() == 0 { return () }
  if stat_fit(stats) != none { return (stats,) }
  let k = if cut == none { calc.ceil(stats.len() / 2) } else { cut }
  (stats.slice(0, k), stats.slice(k))
}

// `stats` is a list of (label, value) shown below the types, on two lines
// cut at `stat_cut` when one is too narrow. `icon` is shown small at the
// bottom center, below the rules text.
#let card_front(name, types, body, stats: (), stat_cut: none, icon: none) = card_frame({
  corners()
  let cx = card_width / 2
  if icon != none { at(cx, front_icon_y, icon_image(icon, front_icon_size)) }
  let body_bottom = body_end(icon != none)
  at(cx, 8.3mm, fit_text(upper(name), size: 11pt, tracking: 1.8pt, weight: "bold"))

  context {
    // Types below the name, wrapping on several lines if needed; the header
    // below moves down by the extra lines.
    let types_style(body) = text(size: 4.5pt, tracking: 1.1pt, upper(body))
    let types_block = block(width: card_width - 2 * side_margin,
      align(center, par(leading: 1.2mm, types_style(types_text(types)))))
    let one_line = measure(types_style("X")).height
    let extra = measure(types_block).height - one_line
    place(top + left, dx: side_margin, dy: types_bottom - one_line, types_block)

    let lines = stat_lines(stats, cut: stat_cut)
    let n = lines.len()

    // Tighten the header and block gaps step by step, then shrink the text.
    let w = card_width - 2 * side_margin
    let steps = calc.round((max_gap - min_gap) / gap_step)
    let fits(k, s) = body_height(body, w, s, gap: max_gap - k * gap_step) <= body_bottom - body_top(n, k / steps, extra: extra)
    let k = 0
    while k < steps and not fits(k, text_size) { k += 1 }
    let s = text_size
    while s > min_text_size and not fits(k, s) { s -= 0.25pt }
    let f = k / steps

    // Each line is centered on its own; both get the same value size.
    let fitted = lines.map(l => stat_fit(l, min_size: 6pt))
    let size = calc.min(..fitted.map(x => x.at(0)), 10pt)
    let drawn = lines.zip(fitted).map(((l, x)) => stat_line(l, size: size, pad: x.at(1)))
    for (i, line) in drawn.enumerate() { at(cx, stat_top(i, f, extra: extra) + stat_height / 2, line) }
    if n == 2 {
      let half = calc.max(..drawn.map(l => measure(l).width)) * 0.3  // rule: 60% of the wider line
      let y = stat_top(1, f, extra: extra) - tighten(between_stats, f) / 2
      seg((cx - half, y), (cx + half, y))
    }

    let y0 = body_top(n, f, extra: extra)
    place(top + left, dx: side_margin, dy: y0,
      box(width: w, height: body_bottom - y0,
        align(left + horizon, laid_body(body, s, gap: max_gap - k * gap_step))))
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
  // The types hang below the name: extra lines go down, not over the name.
  context {
    let style(body) = text(size: 6pt, tracking: 1.5pt, upper(body))
    let one_line = measure(style("X")).height
    place(top + left, dx: 6mm, dy: name_y + 6.5mm - one_line / 2,
      block(width: card_width - 12mm, align(center,
        par(leading: 1.6mm, style(types_text(types))))))
  }
})

// Both faces of a card, front on the left and back on the right.
// `part` ("1/2", "2/2") is added to the types of a card split in two.
// The family icon comes from the types (see family_icons.typ): large in the
// middle of the back, small at the bottom of the front. `icon` (a card's own
// illustration) replaces it on the back only.
#let creat_card(name, types, body, stats: (), stat_cut: none, back_types: none, icon: none, part: none) = {
  let extra = if part == none { () } else { (part,) }
  let family = family_icon(types)
  // Marker found by #card_ref (game/terms.typ) to link to this card.
  metadata((card: name))
  box(grid(columns: 2, column-gutter: card_gap,
    card_front(name, types + extra, body, stats: stats, stat_cut: stat_cut, icon: family),
    card_back(name, (if back_types == none { types } else { back_types }) + extra,
              icon: if icon == none { family } else { icon })))
}

// Stat values may be numbers, strings or content.
#let stat_value(v) = if type(v) == int or type(v) == float { str(v) } else { v }
