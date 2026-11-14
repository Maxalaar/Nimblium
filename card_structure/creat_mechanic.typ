#import "creat_frame.typ": creat_card, reminders, join_blocks

#let creat_mechanic(mechanic) = {
  let blocks = ()
  if "description" in mechanic { blocks.push(mechanic.description) }
  if "reminder" in mechanic { blocks.push(reminders(mechanic.reminder)) }

  creat_card(
    mechanic.name,
    mechanic.at("type", default: ()),
    join_blocks(blocks),
    icon: mechanic.at("icon", default: none),
  )
}
