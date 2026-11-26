#import "creat_frame.typ": creat_card, reminders, join_blocks, stat_value
#import "badges.typ": dark_badge, tag_badge, levels_section

#let labelled_section(label, body) = [#dark_badge(label)\ #body]

// `spell.type` is (card type, school, tier, tags...).
// The types below the name show the whole `type`: card type, school, tier
// ("Tier 5" or "Cantrip") and tags such as AoE. The numbers go to the stat row
// below the types, with short labels (4 letters, except REACH): action and mana costs,
// casting time (CAST, for spells that take minutes), concentration, then damage, range, reach and area.
// When the row needs two lines, the casting stats go on the first one and the
// effect on the second. Any other cost stays a capsule above the effect.
#let creat_spell(spell) = {
  let stats = ()
  let tags = ()
  for c in spell.at("cost", default: ()) {
    if type(c) == str and c.ends-with(regex(" Actions?")) { stats.push(("ACT", c.split(" ").first())) }
    else if type(c) == str and c.ends-with(" Mana") { stats.push(("Mana", c.split(" ").first())) }
    else { tags.push(c) }
  }
  if "casting_time" in spell { stats.push(("Cast", stat_value(spell.casting_time))) }
  if "concentration" in spell { stats.push(("Conc", stat_value(spell.concentration))) }
  let cut = stats.len()
  if "damage" in spell { stats.push(("DMG", stat_value(spell.damage))) }
  if "range" in spell { stats.push(("RNGE", stat_value(spell.range))) }
  if "reach" in spell { stats.push(("REACH", stat_value(spell.reach))) }
  if "area" in spell { stats.push(("Area", stat_value(spell.area))) }
  let effect = spell.at("effect", default: none)
  let blocks = (if tags.len() > 0 { [#tags.map(tag_badge).join(h(2pt))\ #effect] } else { effect },)
  if "levels" in spell { blocks.push(levels_section(spell.levels)) }
  // Several upcasts are options: the caster picks one of them for each tier.
  if "upcast" in spell {
    let options = if type(spell.upcast) == array { spell.upcast } else { (spell.upcast,) }
    for u in options { blocks.push(labelled_section("Upcast", u)) }
  }
  if "flavor" in spell { blocks.push(emph(spell.flavor)) }
  if "reminder" in spell { blocks.push(reminders(spell.reminder)) }

  creat_card(
    spell.name,
    spell.type,
    join_blocks(blocks),
    stats: stats,
    stat_cut: cut,
    icon: spell.at("icon", default: none),
  )
}
