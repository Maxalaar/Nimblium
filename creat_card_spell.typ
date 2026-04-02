#import "creat_card_frame.typ": creat_card_frame

#let creat_card_spell(spell) = {
  let data = ()

  if "cost" in spell {
    data = data + (text(size: 8pt, weight: "bold")[*Cost: *#spell.cost.join(" • ")],)
  }

  if "range" in spell {
    data = data + (text(size: 8pt)[*Range:* #spell.range],)
  }

  if "effect" in spell {
    data = data + (text(size: 8pt)[*Effect: *#spell.effect],)
  }

  if "high_Levels" in spell {
    data = data + (text(size: 8pt)[*High Levels:* #spell.high_Levels],)
  }

  creat_card_frame(
    spell.name,
    type: if "type" in spell { spell.type } else { none },
    data: data,
  )
}