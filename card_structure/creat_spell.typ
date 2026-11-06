#import "creat_frame.typ": creat_frame
#import "badges.typ": dark_badge, tag_badge
#import "../style.typ": reminder_color

#let section_spacing = 1em
#let capsule_row_leading = 0.25em
#let capsule_spacing = 2pt
#let reminder_item_spacing = 0.3em

#let capsule_row(items) = items.map(tag_badge).join(h(capsule_spacing))

// A bare number is labelled; shapes such as "Line 12" already name themselves.
#let reach_label(reach) = if type(reach) == str and reach.first().match(regex("\d")) != none {
  "Reach " + reach
} else {
  reach
}

// `spell.type` is (card type, school, tier, tags...).
#let capsule_rows(spell) = {
  let info = ()
  if "damage" in spell { info.push([#spell.damage damage]) }
  if "range" in spell { info.push([Range #spell.range]) }
  if "reach" in spell { info.push(reach_label(spell.reach)) }
  if "area" in spell { info.push([Area #spell.area]) }
  info += spell.type.slice(3)
  if "concentration" in spell { info.push([Concentration #spell.concentration]) }

  let rows = (dark_badge(spell.type.at(2)),)
  if "cost" in spell { rows.push(capsule_row(spell.cost)) }
  if info.len() > 0 { rows.push(capsule_row(info)) }

  set par(leading: capsule_row_leading)
  rows.join(linebreak())
}

#let labelled_section(label, body) = [#dark_badge(label)\ #body]

#let creat_spell(spell) = {
  let gap = v(section_spacing, weak: true)
  let data = (capsule_rows(spell),)

  if "effect" in spell { data += (gap, spell.effect) }
  if "high_Levels" in spell { data += (gap, labelled_section("High Levels", spell.high_Levels)) }
  if "upcast" in spell { data += (gap, labelled_section("Upcast", spell.upcast)) }
  if "reminder" in spell {
    let reminder_content = {
      for (i, r) in spell.reminder.enumerate() {
        if i > 0 { v(reminder_item_spacing, weak: true) }
        text(size: 7pt, fill: reminder_color)[#r]
      }
    }
    data += (gap, reminder_content)
  }

  creat_frame(
    spell.name,
    type: spell.type.slice(0, 2),
    data: data,
  )
}
