#import "creat_frame.typ": creat_frame

#let creat_spell(spell) = {
  let data = ()

  if "cost" in spell {
    data = data + (text(size: 8pt)[*Cost:* #spell.cost.join(", ")],)
  }

  if "concentration" in spell {
    data = data + (text(size: 8pt)[*Concentration:* #spell.concentration],)
  }

  if "range" in spell {
    data = data + (text(size: 8pt)[*Range:* #spell.range],)
  }

  if "reach" in spell {
    data = data + (text(size: 8pt)[*Reach:* #spell.reach],)
  }

  if "area" in spell {
    data = data + (text(size: 8pt)[*Area:* #spell.area],)
  }

  if "damage" in spell {
    data = data + (text(size: 8pt)[*Damage:* #spell.damage],)
  }
  
  if "reaction" in spell {
    data = data + (text(size: 8pt)[*Reaction:* #spell.reaction],)
  }

  if "effect" in spell {
    data = data + (text(size: 8pt)[*Effect:* #spell.effect],)
  }

  if "high_Levels" in spell {
    data = data + (text(size: 8pt)[*High Levels:* #spell.high_Levels],)
  }

  if "upcast" in spell {
    data = data + (text(size: 8pt)[*Upcast:* #spell.upcast],)
  }

  if "reminder" in spell {
    let reminder_content = {
      for (i, r) in spell.reminder.enumerate() {
        if i > 0 { v(0.3em, weak: true) }
        text(size: 7pt, fill: rgb("#666666"))[#r]
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