#import "creat_frame.typ": creat_frame

#let ability_text_size = 8pt
#let reminder_spacing = 1em
#let reminder_item_spacing = 0.3em
#let passive_spacing = 0.8em
#let passive_item_spacing = 0.3em

#let creat_ability(ability) = {
  let data = ()

  if "limitation" in ability {
    data = data + (text(size: ability_text_size)[*Limitation:* #ability.limitation],)
  }

  if "effect" in ability {
    data = data + (text(size: ability_text_size)[*Effect:* #ability.effect],)
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