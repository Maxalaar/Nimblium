#import "creat_frame.typ": creat_card, reminders, join_blocks, stat_value
#import "badges.typ": dark_badge, tag_badge

#let labelled_section(label, body) = [#dark_badge(label)\ #body]

// `spell.type` is (card type, school, tier, tags...).
// The tier ("Tier 5" or "Cantrip") joins the card type and school in the
// types below the name. Everything else that describes the whole spell goes
// to the stat row below the types, with labels of 4 letters at most: action
// and mana costs, concentration, then damage, range, reach, area and AoE.
// When the row needs two lines, the casting stats go on the first one and the
// effect on the second. Any other cost or tag stays a capsule above the effect.
#let creat_spell(spell) = {
  let stats = ()
  let tags = ()
  for c in spell.at("cost", default: ()) {
    if type(c) == str and c.ends-with(regex(" Actions?")) { stats.push(("ACT", c.split(" ").first())) }
    else if type(c) == str and c.ends-with(" Mana") { stats.push(("Mana", c.split(" ").first())) }
    else { tags.push(c) }
  }
  if "concentration" in spell { stats.push(("Conc", stat_value(spell.concentration))) }
  let cut = stats.len()
  if "damage" in spell { stats.push(("DMG", stat_value(spell.damage))) }
  if "range" in spell { stats.push(("RNGE", stat_value(spell.range))) }
  if "reach" in spell { stats.push(("REAC", stat_value(spell.reach))) }
  if "area" in spell { stats.push(("Area", stat_value(spell.area))) }
  for t in spell.type.slice(3) {
    if t == "AoE" { stats.push(("Targ", t)) } else { tags.push(t) }
  }
  let effect = spell.at("effect", default: none)
  let blocks = (if tags.len() > 0 { [#tags.map(tag_badge).join(h(2pt))\ #effect] } else { effect },)
  if "high_Levels" in spell { blocks.push(labelled_section("High Levels", spell.high_Levels)) }
  if "upcast" in spell { blocks.push(labelled_section("Upcast", spell.upcast)) }
  if "flavor" in spell { blocks.push(emph(spell.flavor)) }
  if "reminder" in spell { blocks.push(reminders(spell.reminder)) }

  creat_card(
    spell.name,
    spell.type.slice(0, 3),
    join_blocks(blocks),
    stats: stats,
    stat_cut: cut,
    icon: spell.at("icon", default: none),
  )
}
