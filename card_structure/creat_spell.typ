#import "creat_frame.typ": creat_frame

#let spell_text_size = 8pt
#let reminder_spacing = 1em
#let reminder_item_spacing = 0.3em

#let creat_spell(spell) = {
  let data = ()
  if "cost" in spell {
    data = data + (text(size: spell_text_size)[*Cost:* #spell.cost.join(", ")],)
  }
  if "concentration" in spell {
    data = data + (text(size: spell_text_size)[*Concentration:* #spell.concentration],)
  }
  if "range" in spell {
    data = data + (text(size: spell_text_size)[*Range:* #spell.range],)
  }
  if "reach" in spell {
    data = data + (text(size: spell_text_size)[*Reach:* #spell.reach],)
  }
  if "area" in spell {
    data = data + (text(size: spell_text_size)[*Area:* #spell.area],)
  }
  if "damage" in spell {
    data = data + (text(size: spell_text_size)[*Damage:* #spell.damage],)
  }
  if "reaction" in spell {
    data = data + (text(size: spell_text_size)[*Reaction:* #spell.reaction],)
  }
  if "effect" in spell {
    data = data + (text(size: spell_text_size)[*Effect:* #spell.effect],)
  }
  if "high_Levels" in spell {
    data = data + (text(size: spell_text_size)[*High Levels:* #spell.high_Levels],)
  }
  if "upcast" in spell {
    data = data + (text(size: spell_text_size)[*Upcast:* #spell.upcast],)
  }
  if "reminder" in spell {
    let reminder_content = {
      v(reminder_spacing, weak: true)
      for (i, r) in spell.reminder.enumerate() {
        if i > 0 { v(reminder_item_spacing, weak: true) }
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