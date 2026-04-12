#import "creat_frame.typ": creat_frame

#let reminder_spacing = 1em
#let reminder_item_spacing = 0.3em
#let passive_spacing = 0.8em
#let passive_item_spacing = 0.3em

#let section_line(label) = {
  grid(
    columns: (1fr, auto, 1fr),
    column-gutter: 4pt,
    align: horizon,
    line(length: 100%, stroke: (thickness: 0.5pt, paint: black)),
    text(size: 6pt, weight: "bold", fill: black)[#label],
    line(length: 100%, stroke: (thickness: 0.5pt, paint: black)),
  )
}

#let creat_creature(creature) = {
  let data = ()

  if "passive" in creature {
    let passive_content = {
      section_line("Passive")
      v(passive_item_spacing, weak: true)
      for (i, p) in creature.passive.enumerate() {
        if i > 0 { v(passive_item_spacing, weak: true) }
        p
      }
    }
    data = data + (passive_content,)
  }

  if "ability" in creature {
    let ability_content = {
      v(passive_spacing, weak: true)
      if "passive" in creature {
        section_line("Active")
      }
      v(passive_item_spacing, weak: true)
      for (i, a) in creature.ability.enumerate() {
        if i > 0 { v(passive_item_spacing, weak: true) }
        a
      }
    }
    data = data + (ability_content,)
  }

  if "reminder" in creature {
    let reminder_content = {
      v(reminder_spacing, weak: true)
      for (i, r) in creature.reminder.enumerate() {
        if i > 0 { v(reminder_item_spacing, weak: true) }
        text(size: 7pt, fill: rgb("#666666"))[#r]
      }
    }
    data = data + (reminder_content,)
  }

  creat_frame(
    creature.name,
    type: if "type" in creature { creature.type } else { none },
    data: data,
    hit_points: if "hit_points" in creature { creature.hit_points } else { none },
    armor: if "armor" in creature { creature.armor } else { none },
    speed: if "speed" in creature { creature.speed } else { none },
    level: if "level" in creature { creature.level } else { none },
  )
}