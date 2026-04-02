#import "@preview/cetz:0.4.0"

#let creat_card_frame(
  name,
  type: none,
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
  
  let process_type(type) = {
    let result = ()
    for (i, element) in type.enumerate() {
      if i > 0 {
        result = result + (", ",)
      }
      result = result + (element,)
    }
    return result.join()
  }
  
  cetz.canvas({
    import cetz.draw: *
    
    rect(
      name: "background",
      (0, 0),
      (card_width, card_height),
      radius: (rest: 2.5mm),
      fill: background_color,
    )
    
    rect(
      name: "border",
      (0, 0),
      (card_width, card_height),
      radius: (rest: 2.5mm),
      stroke: (
        thickness: 1mm,
        paint: border_color,
      )
    )
    
    rect(
      name: "name_box",
      (horizontal_margin, name_box_top),
      (name_box_right, name_box_bottom),
      radius: (rest: 1mm),
      fill: white,
      stroke: (thickness: 0.5mm, paint: black)
    )
    
    content(
      (name_box_center_x, name_box_top - 3mm),
      anchor: "center",
      text(size: 11pt, weight: "bold")[#name],
    )
    
    content(
      (name_box_center_x, name_box_top - 6.5mm),
      anchor: "center",
      text(size: 7pt)[#process_type(type)],
    )
  })
}