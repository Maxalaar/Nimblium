#import "creat_frame.typ": creat_frame

#let ability_text_size = 8pt
#let reminder_spacing = 1em
#let reminder_item_spacing = 0.3em
#let passive_spacing = 0.8em
#let passive_item_spacing = 0.3em

#let mode_shades = (
  passive: rgb("#8A8A8A"),
  active: rgb("#4D4D4D"),
)

#let mode_order = (
  active: 0,
  passive: 1,
)

#let mode_badge(kind) = {
  let color = mode_shades.at(kind, default: rgb("#4D4D4D"))
  box(
    fill: color,
    radius: 2pt,
    inset: (x: 3pt, y: 1.5pt),
    baseline: 10%,
  )[#text(size: 6pt, weight: "bold", fill: white)[#upper(kind)]]
}

#let tag_badge(label) = {
  box(
    fill: white,
    stroke: 0.5pt + black,
    radius: 2pt,
    inset: (x: 3pt, y: 1.5pt),
    baseline: 10%,
  )[#text(size: 6pt, weight: "bold", fill: black)[#label]]
}

#let ability_block(block) = {
  set text(size: ability_text_size)
  mode_badge(block.kind)
  if "cost" in block {
    for c in block.cost {
      h(2pt)
      tag_badge(c)
    }
  }
  if "limitation" in block {
    h(2pt)
    tag_badge(block.limitation)
  }
  linebreak()
  block.effect
}

#let creat_ability(ability) = {
  let data = ()

  let sorted_blocks = ability.blocks.sorted(key: blk => mode_order.at(blk.kind, default: 99))
  for (i, blk) in sorted_blocks.enumerate() {
    if i > 0 { data = data + (v(passive_item_spacing, weak: true),) }
    data = data + (ability_block(blk),)
  }

  if "reminder" in ability {
    let reminder_content = {
      v(reminder_spacing, weak: true)
      for (i, r) in ability.reminder.enumerate() {
        if i > 0 { v(reminder_item_spacing, weak: true) }
        text(size: 7pt, fill: rgb("#666666"))[#r]
      }
    }
    data = data + (reminder_content,)
  }

  creat_frame(
    ability.name,
    type: if "type" in ability { ability.type } else { none },
    data: data,
  )
}
