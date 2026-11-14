#import "creat_frame.typ": creat_card, reminders, stat_value, body_area, body_height, text_size, min_text_size, card_gap
#import "creat_ability.typ": ability_block

#let block_spacing = 0.8em
#let kind_order = (passive: 0, active: 1)

// Creatures follow creature_rules.md: named blocks with capsules, like hero
// abilities, passives first then actives.
// Splitting is off by default: a creature is one card, and a text that is too
// long overflows visibly. With `split: true`, a creature whose text doesn't
// fit on one card, even at the smallest text size, becomes two cards "1/2"
// and "2/2": the first one gets the stats and as many blocks as fit at the
// normal size, the second one the rest and the reminders.
#let creat_creature(creature) = {
  let blocks = creature.at("blocks", default: ())
    .sorted(key: b => kind_order.at(b.kind, default: 99))
    .map(ability_block)
  let extra = if "reminder" in creature { (reminders(creature.reminder),) } else { () }

  let stats = ()
  if creature.at("actions", default: 1) != 1 { stats.push(("ACT", stat_value(creature.actions))) }
  if "hit_points" in creature { stats.push(("HP", stat_value(creature.hit_points))) }
  if "defense" in creature { stats.push(("DEF", stat_value(creature.defense))) }
  if "speed" in creature { stats.push(("SPD", stat_value(creature.speed))) }
  if "level" in creature { stats.push(("LVL", stat_value(creature.level))) }

  let card(parts, stats: (), part: none) = creat_card(
    creature.name,
    creature.at("type", default: ()),
    parts.join(v(block_spacing)),
    stats: stats,
    icon: creature.at("icon", default: none),
    part: part,
  )

  context {
    let (width, height) = body_area(stats.len() > 0)
    let fits(parts, size) = body_height(parts.join(v(block_spacing)), width, size) <= height
    let split = creature.at("split", default: false)
    if not split or blocks.len() < 2 or fits(blocks + extra, min_text_size) {
      card(blocks + extra, stats: stats)
    } else {
      let n = 1
      while n < blocks.len() - 1 and fits(blocks.slice(0, n + 1), text_size) { n += 1 }
      stack(spacing: card_gap,
        card(blocks.slice(0, n), stats: stats, part: "1/2"),
        card(blocks.slice(n) + extra, part: "2/2"))
    }
  }
}
