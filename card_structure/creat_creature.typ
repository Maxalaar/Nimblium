#import "creat_frame.typ": creat_card, reminders, stat_value, ink

#let entry_spacing = 0.3em
#let section_spacing = 0.8em

// Section bar: ──── PASSIVE ────
#let section_line(label) = grid(
  columns: (1fr, auto, 1fr),
  column-gutter: 4pt,
  align: horizon,
  line(length: 100%, stroke: 0.5pt + ink),
  text(size: 6pt, weight: "bold", upper(label)),
  line(length: 100%, stroke: 0.5pt + ink),
)

// Sections are labelled only when the creature has more than one of them.
#let creat_creature(creature) = {
  let sections = ("passive", "active", "ability").filter(k => k in creature)
  let blocks = sections.map(k => {
    if sections.len() > 1 { section_line(k); v(entry_spacing) }
    creature.at(k).join(v(entry_spacing))
  })
  if "reminder" in creature { blocks.push(reminders(creature.reminder)) }

  let stats = ()
  if "hit_points" in creature { stats.push(("HP", stat_value(creature.hit_points))) }
  if "armor" in creature { stats.push(("ARM", stat_value(creature.armor))) }
  if "speed" in creature { stats.push(("SPD", stat_value(creature.speed))) }
  if "level" in creature { stats.push(("LVL", stat_value(creature.level))) }

  creat_card(
    creature.name,
    creature.at("type", default: ()),
    blocks.join(v(section_spacing)),
    stats: stats,
    icon: creature.at("icon", default: none),
  )
}
