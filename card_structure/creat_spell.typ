#import "creat_frame.typ": creat_card, reminders, join_blocks, stat_value
#import "badges.typ": dark_badge, tag_badge

#let labelled_section(label, body) = [#dark_badge(label)\ #body]

// `spell.type` is (card type, school, tier, tags...).
// The tier, costs, tags and concentration are capsules above the effect;
// damage, range, reach and area go to the stat row at the bottom.
#let creat_spell(spell) = {
  let tags = spell.at("cost", default: ()) + spell.type.slice(3)
  if "concentration" in spell { tags.push([Concentration #spell.concentration]) }
  let capsules = ((dark_badge(spell.type.at(2)),) + tags.map(tag_badge)).join(h(2pt))

  let blocks = ([#capsules\ #spell.at("effect", default: none)],)
  if "high_Levels" in spell { blocks.push(labelled_section("High Levels", spell.high_Levels)) }
  if "upcast" in spell { blocks.push(labelled_section("Upcast", spell.upcast)) }
  if "flavor" in spell { blocks.push(emph(spell.flavor)) }
  if "reminder" in spell { blocks.push(reminders(spell.reminder)) }

  let stats = ()
  if "damage" in spell { stats.push(("DMG", stat_value(spell.damage))) }
  if "range" in spell { stats.push(("Range", stat_value(spell.range))) }
  if "reach" in spell { stats.push(("Reach", stat_value(spell.reach))) }
  if "area" in spell { stats.push(("Area", stat_value(spell.area))) }

  creat_card(
    spell.name,
    spell.type.slice(0, 2),
    join_blocks(blocks),
    stats: stats,
    icon: spell.at("icon", default: none),
  )
}
