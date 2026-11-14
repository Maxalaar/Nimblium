#import "creat_frame.typ": creat_card, reminders, stat_value
#import "creat_ability.typ": ability_block

#let block_spacing = 0.8em

// Creatures follow creature_rules.md: named passive/active blocks with
// capsules, like hero abilities, in the order they are written.
#let creat_creature(creature) = {
  let blocks = creature.at("blocks", default: ()).map(ability_block)
  if "reminder" in creature { blocks.push(reminders(creature.reminder)) }

  let stats = ()
  if creature.at("actions", default: 1) != 1 { stats.push(("ACT", stat_value(creature.actions))) }
  if "hit_points" in creature { stats.push(("HP", stat_value(creature.hit_points))) }
  if "armor" in creature { stats.push(("ARM", stat_value(creature.armor))) }
  if "speed" in creature { stats.push(("SPD", stat_value(creature.speed))) }
  if "level" in creature { stats.push(("LVL", stat_value(creature.level))) }

  creat_card(
    creature.name,
    creature.at("type", default: ()),
    blocks.join(v(block_spacing)),
    stats: stats,
    icon: creature.at("icon", default: none),
  )
}
