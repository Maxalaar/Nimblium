#import "creat_frame.typ": creat_frame

#let reminder_spacing = 1em
#let reminder_item_spacing = 0.3em

#let creat_creature(creature) = {
  
  let data = ()

  if "ability" in creature {
    data = data + creature.ability
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