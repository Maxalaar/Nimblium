#import "@preview/cetz:0.4.0"

#let creat_frame(
  name,
  type: none,
  data: (),
  background_color: rgb("#cfcfca"),
  border_color: black,
) = {
  let card_width = 63mm
  let card_height = 88mm
  let vertical_margin = 1.5mm
  let horizontal_margin = 1.5mm

  let name_box_size = 8.5mm
  let name_box_top = card_height - vertical_margin
  let name_box_bottom = name_box_top - name_box_size
  let name_box_right = card_width - horizontal_margin
  let name_box_center_x = (horizontal_margin + name_box_right) / 2

  let text_box_top = name_box_bottom - vertical_margin
  let text_box_bottom = vertical_margin
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
  })
}