#import "creat_frame.typ": creat_card, reminders, join_blocks
#import "badges.typ": dark_badge, tag_badge, levels_section

#let mode_shades = (
  active: rgb("#2e2e2e"),
  passive: rgb("#474747"),
  narrative: rgb("#868686"),
)

// Narrative first (always true), then passive (true in combat), then active (what you do).
#let mode_order = (
  narrative: 0,
  passive: 1,
  active: 2,
)

#let mode_badge(kind) = dark_badge(kind, color: mode_shades.at(kind, default: rgb("#4D4D4D")))

// Optional bold name (creature attacks, granted actions), then the mode, cost,
// tag (AoE...) and limitation capsules, then the attack capsules (number of
// attacks, reach or range, damage), then the effect below them. The effect is
// optional: a plain attack is fully described by its capsules. `damage` may be
// a string ("1d6+2") or content ([Die+#WIL radiant]).
#let ability_block(block) = {
  let tags = block.at("cost", default: ()) + block.at("tags", default: ())
  if "limitation" in block { tags += (block.limitation,) }
  if "attacks" in block { tags.push(str(block.attacks) + " Attacks") }
  if "reach" in block { tags.push("Reach " + str(block.reach)) }
  if "range" in block { tags.push("Range " + str(block.range)) }
  if "damage" in block { tags.push([#block.damage Damage]) }
  if "name" in block { strong(block.name); linebreak() }
  ((mode_badge(block.kind),) + tags.map(tag_badge)).join(h(2pt))
  if "effect" in block { linebreak(); block.effect }
}

#let creat_ability(ability) = {
  let blocks = ability.blocks
    .sorted(key: blk => mode_order.at(blk.kind, default: 99))
    .map(ability_block)
  // Levels comes after every block (narrative, passive, active).
  if "levels" in ability { blocks.push(levels_section(ability.levels)) }
  if "reminder" in ability { blocks.push(reminders(ability.reminder)) }

  creat_card(
    ability.name,
    ability.at("type", default: ()),
    join_blocks(blocks),
    icon: ability.at("icon", default: none),
  )
}
