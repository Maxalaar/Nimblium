#import "@preview/cetz:0.4.0"

#let creat_frame(
  name,
  type: none,
  data: (),
  background_color: rgb("#cfcfca"),
  border_color: black,
  hit_points: none,
  armor: none,
  speed: none,
  level: none,
) = {
  let card_width = 63mm
  let card_height = 88mm
  let vertical_margin = 1.5mm
  let horizontal_margin = 1.5mm
  let name_box_size = 8.5mm
  let stat_box_size = 10mm
  let stat_box_bottom = vertical_margin
  let stat_box_top = stat_box_bottom + stat_box_size

  let name_box_top = card_height - vertical_margin
  let name_box_bottom = name_box_top - name_box_size
  let name_box_right = card_width - horizontal_margin
  let name_box_center_x = (horizontal_margin + name_box_right) / 2

  // Si des stats sont présentes, la zone de texte remonte au-dessus des carrés
  let has_stats = hit_points != none or armor != none or speed != none or level != none
  let text_box_bottom = if has_stats { stat_box_top + vertical_margin } else { vertical_margin }
  let text_box_top = name_box_bottom - vertical_margin
  let text_box_center_y = (text_box_top + text_box_bottom) / 2

  let process_type(type) = {
    let result = ()
    for (i, element) in type.enumerate() {
      if i > 0 { result = result + (", ",) }
      result = result + (element,)
    }
    return result.join()
  }

  let text_content = {
    set text(size: 8pt)
    set par(leading: 0.4em)
    for (i, element) in data.enumerate() {
      if i > 0 { v(0.5em, weak: true) }
      element
    }
  }

  // Préparer les stats à afficher (label + valeur)
  let stats = ()
  if hit_points != none { stats.push(("HP", str(hit_points))) }
  if armor != none      { stats.push(("ARM", str(armor))) }
  if speed != none      { stats.push(("SPD", str(speed))) }
  if level != none      { stats.push(("LVL", str(level))) }

  cetz.canvas({
    import cetz.draw: *

    // Fond
    rect(
      name: "background",
      (0, 0),
      (card_width, card_height),
      radius: (rest: 2.5mm),
      fill: background_color,
    )

    // Bordure
    rect(
      name: "border",
      (0, 0),
      (card_width, card_height),
      radius: (rest: 2.5mm),
      stroke: (thickness: 1mm, paint: border_color)
    )

    // Boîte nom + type
    rect(
      name: "name_box",
      (horizontal_margin, name_box_bottom),
      (name_box_right, name_box_top),
      radius: (rest: 1mm),
      fill: white,
      stroke: (thickness: 0.5mm, paint: black)
    )
    content(
      (name_box_center_x, name_box_top - 3mm),
      anchor: "center",
      text(size: 11pt, weight: "bold")[#name],
    )
    if type != none {
      content(
        (name_box_center_x, name_box_top - 6.5mm),
        anchor: "center",
        text(size: 7pt)[#process_type(type)],
      )
    }

    // Zone de texte
    rect(
      name: "text_box",
      (horizontal_margin, text_box_bottom),
      (card_width - horizontal_margin, text_box_top),
      radius: (rest: 1mm),
      fill: white,
      stroke: (thickness: 0.5mm, paint: black)
    )
    content(
      (card_width / 2, text_box_center_y),
      anchor: "center",
      box(
        width: card_width - 6mm,
        align(horizon, text_content)
      )
    )

    // Carrés de stats en bas
    if has_stats {
      let n = stats.len()
      let usable_width = card_width - 2 * horizontal_margin
      let gap = 1.5mm
      let box_w = (usable_width - gap * (n - 1)) / n

      for (i, stat) in stats.enumerate() {
        let (label, value) = stat
        let x0 = horizontal_margin + (box_w + gap) * i
        let x1 = x0 + box_w
        let y0 = stat_box_bottom
        let y1 = stat_box_top
        let cx = (x0 + x1) / 2
        let cy = (y0 + y1) / 2

        rect(
          (x0, y0),
          (x1, y1),
          radius: (rest: 1mm),
          fill: white,
          stroke: (thickness: 0.5mm, paint: black)
        )
        // Label (petite étiquette en haut du carré)
        content(
          (cx, y1 - 2mm),
          anchor: "center",
          text(size: 5pt, weight: "bold", fill: rgb("#555555"))[#label],
        )
        // Valeur (grande, centrée)
        content(
          (cx, cy - 0.5mm),
          anchor: "center",
          text(size: 9pt, weight: "bold")[#value],
        )
      }
    }
  })
}