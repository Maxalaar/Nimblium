#import "creat_frame.typ": creat_card, reminders, join_blocks
#import "badges.typ": dark_badge, tag_badge

#let mode_shades = (
  active: rgb("#2e2e2e"),
  passive: rgb("#474747"),
  narrative: rgb("#868686"),
)

#let mode_order = (
  active: 0,
  passive: 1,
)

#let mode_badge(kind) = dark_badge(kind, color: mode_shades.at(kind, default: rgb("#4D4D4D")))

// Optional bold name (creature attacks, granted actions), then the mode, cost,
// tag (AoE...) and limitation capsules, then the attack capsules (number of
// attacks, range, damage), then the effect below them. The effect is optional:
// a plain attack is fully described by its capsules.
#let ability_block(block) = {
  let tags = block.at("cost", default: ()) + block.at("tags", default: ())
  if "limitation" in block { tags += (block.limitation,) }
  if "attacks" in block { tags.push(str(block.attacks) + " attacks") }
  if "range" in block { tags.push("Range " + str(block.range)) }
  if "damage" in block { tags.push(block.damage + " damage") }
  if "name" in block { strong(block.name); linebreak() }
  ((mode_badge(block.kind),) + tags.map(tag_badge)).join(h(2pt))
  if "effect" in block { linebreak(); block.effect }
}

#let creat_ability(ability) = {
  let blocks = ability.blocks
    .sorted(key: blk => mode_order.at(blk.kind, default: 99))
    .map(ability_block)
  if "reminder" in ability { blocks.push(reminders(ability.reminder)) }

  creat_card(
    ability.name,
    ability.at("type", default: ()),
    join_blocks(blocks),
    icon: ability.at("icon", default: none),
  )
}
