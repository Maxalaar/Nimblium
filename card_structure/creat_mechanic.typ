#import "creat_frame.typ": creat_card, reminders

#let block_spacing = 0.8em

#let creat_mechanic(mechanic) = {
  let blocks = ()
  if "description" in mechanic { blocks.push(mechanic.description) }
  if "reminder" in mechanic { blocks.push(reminders(mechanic.reminder)) }

  creat_card(
    mechanic.name,
    mechanic.at("type", default: ()),
    blocks.join(v(block_spacing)),
    icon: mechanic.at("icon", default: none),
  )
}
