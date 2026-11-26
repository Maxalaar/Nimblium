#import "creat_frame.typ": creat_card, reminders, join_blocks, stat_value
#import "creat_ability.typ": ability_block, mode_order
#import "badges.typ": levels_section

// Item cards (weapons today; armor, shields and gear later).
// `item.type` is ("Item", family, group, category), e.g.
// ("Item", "Weapon", "Melee", "Blade"). The category describes the weapon; abilities may
// name it. `item.family_icon` is the icon of its kind (dagger, sword, bow...), on both
// faces.
// The stat row shows what describes the whole item: the level needed to use it (LVL),
// damage or defense, reach, range, charges (CHRG), then the inventory slots it takes,
// always last.
// Its properties (two-handed, thrown, a STR requirement...) are blocks, written
// like ability blocks with a name: a passive for a rule, an active for an
// action such as Load.
#let creat_item(item) = {
  let stats = ()
  if "level" in item { stats.push(("LVL", stat_value(item.level))) }
  if "damage" in item { stats.push(("DMG", stat_value(item.damage))) }
  if "defense" in item { stats.push(("DEF", stat_value(item.defense))) }
  if "reach" in item { stats.push(("REACH", stat_value(item.reach))) }
  if "range" in item { stats.push(("RNGE", stat_value(item.range))) }
  if "charges" in item { stats.push(("CHRG", stat_value(item.charges))) }
  if "slots" in item { stats.push(("SLOT", stat_value(item.slots))) }
  let blocks = item.at("blocks", default: ())
    .sorted(key: blk => mode_order.at(blk.kind, default: 99))
    .map(ability_block)
  if "levels" in item { blocks.push(levels_section(item.levels)) }
  if "reminder" in item { blocks.push(reminders(item.reminder)) }

  creat_card(
    item.name,
    item.type,
    join_blocks(blocks),
    stats: stats,
    icon: item.at("icon", default: none),
    family: item.at("family_icon", default: none),
  )
}
