#import "creat_frame.typ": creat_card, reminders, join_blocks
#import "badges.typ": high_levels

#let creat_mechanic(mechanic) = {
  let blocks = ()
  if "description" in mechanic { blocks.push(mechanic.description) }
  if "high_Levels" in mechanic { blocks.push(high_levels(mechanic.high_Levels)) }
  if "reminder" in mechanic { blocks.push(reminders(mechanic.reminder)) }

  creat_card(
    mechanic.name,
    mechanic.at("type", default: ()),
    join_blocks(blocks),
    icon: mechanic.at("icon", default: none),
  )
}
