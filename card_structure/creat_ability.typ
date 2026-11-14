#import "creat_frame.typ": creat_card, reminders
#import "badges.typ": dark_badge, tag_badge

#let block_spacing = 0.8em

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

// Mode capsule, then cost and limitation capsules, then the effect below them.
#let ability_block(block) = {
  let tags = block.at("cost", default: ())
  if "limitation" in block { tags += (block.limitation,) }
  ((mode_badge(block.kind),) + tags.map(tag_badge)).join(h(2pt))
  linebreak()
  block.effect
}

#let creat_ability(ability) = {
  let blocks = ability.blocks
    .sorted(key: blk => mode_order.at(blk.kind, default: 99))
    .map(ability_block)
  if "reminder" in ability { blocks.push(reminders(ability.reminder)) }

  creat_card(
    ability.name,
    ability.at("type", default: ()),
    blocks.join(v(block_spacing)),
    icon: ability.at("icon", default: none),
  )
}
