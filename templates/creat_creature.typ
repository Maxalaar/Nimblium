#import "creat_frame.typ": creat_card, family_icon, stat_lines, reminders, stat_value, body_area, body_height, text_size, min_text_size, card_gap, join_blocks, min_gap, max_gap
#import "creat_ability.typ": ability_block

#let kind_order = (narrative: 0, passive: 1, active: 2)
// The size is written in full in the data and shown as one letter on the card.
#let size_letters = (Tiny: "T", Small: "S", Large: "L", Huge: "H", Gargantuan: "G")

// Stat row: ACT (when not 1), HP, DEF, SPD, SIZ, LVL, then STR, DEX, INT, WIL when not 0.
// Creatures follow creature_rules.txt: named blocks with capsules, like hero
// abilities, passives first then actives.
// Splitting is off by default: a creature is one card, and a text that is too
// long overflows visibly. With `split: true`, a creature whose text doesn't
// fit on one card at the smallest text size (measured with the full gap
// between blocks), becomes two cards "1/2" and "2/2": the first one gets the
// stats and as many blocks as fit at the normal size with the tightest gap,
// the second one the rest and the reminders.
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
  if "size" in creature { stats.push(("SIZ", stat_value(size_letters.at(creature.size)))) }
  if "level" in creature { stats.push(("LVL", stat_value(creature.level))) }
  // STR, DEX, INT and WIL are 0 by default and only shown when they are not.
  // When the row needs two lines, they go on the second one.
  let cut = stats.len()
  // A number is shown signed; a formula (content such as [#LVL/4+2]) is shown as is.
  let signed(v) = if type(v) != int { v } else if v > 0 { "+" + str(v) } else { "−" + str(-v) }
  for (key, label) in (("str", "STR"), ("dex", "DEX"), ("int", "INT"), ("wil", "WIL")) {
    if creature.at(key, default: 0) not in (0, none) { stats.push((label, stat_value(signed(creature.at(key))))) }
  }
  if cut == stats.len() or cut == 0 { cut = none }

  let card(parts, stats: (), part: none) = creat_card(
    creature.name,
    creature.at("type", default: ()),
    join_blocks(parts),
    stats: stats,
    stat_cut: cut,
    icon: creature.at("icon", default: none),
    part: part,
  )

  context {
    let has_icon = family_icon(creature.at("type", default: ())) != none
    let (width, height) = body_area(stat_lines(stats, cut: cut).len(), has_icon: has_icon)
    let fits(parts, size, gap) = body_height(join_blocks(parts), width, size, gap: gap) <= height
    let split = creature.at("split", default: false)
    if not split or blocks.len() < 2 or fits(blocks + extra, min_text_size, max_gap) {
      card(blocks + extra, stats: stats)
    } else {
      let n = 1
      while n < blocks.len() - 1 and fits(blocks.slice(0, n + 1), text_size, min_gap) { n += 1 }
      let first = card(blocks.slice(0, n), stats: stats, part: "1/2")
      let second = card(blocks.slice(n) + extra, part: "2/2")
      // With one face only (Codex, website), the two parts are two cards like any other.
      if sys.inputs.at("faces", default: "both") in ("front", "back") { first + second }
      else { stack(spacing: card_gap, first, second) }
    }
  }
}
