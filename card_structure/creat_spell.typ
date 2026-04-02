#import "creat_frame.typ": creat_frame

#let creat_spell(spell) = {
  let data = ()

  if "cost" in spell {
    data = data + (text(size: 8pt, weight: "bold")[*Cost: *#spell.cost.join(" • ")],)
  }

  if "range" in spell {
    data = data + (text(size: 8pt)[*Range:* #spell.range],)
  }

  if "damage" in spell {
    data = data + (text(size: 8pt)[*Damage:* #spell.damage],)
  }

  if "effect" in spell {
    data = data + (text(size: 8pt)[*Effect: *#spell.effect],)
  }

  if "high_Levels" in spell {
    data = data + (text(size: 8pt)[*High Levels:* #spell.high_Levels],)
  }

  if "reminder" in spell {
    let reminder_content = {
      for (i, r) in spell.reminder.enumerate() {
        if i > 0 { v(0.3em, weak: true) }
        text(size: 7pt, style: "italic", fill: rgb("#666666"))[#r]
      }
    }
    data = data + (reminder_content,)
  }

  creat_frame(
    spell.name,
    type: if "type" in spell { spell.type } else { none },
    data: data,
  )
}