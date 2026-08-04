#import "creat_frame.typ": creat_frame

#let mechanic_text_size = 8pt
#let reminder_spacing = 1em
#let reminder_item_spacing = 0.3em

#let creat_mechanic(mechanic) = {
  let data = ()

  if "description" in mechanic {
    data = data + (text(size: mechanic_text_size)[#mechanic.description],)
  }

  if "reminder" in mechanic {
    let reminder_content = {
      v(reminder_spacing, weak: true)
      for (i, r) in mechanic.reminder.enumerate() {
        if i > 0 { v(reminder_item_spacing, weak: true) }
        text(size: 7pt, fill: rgb("#666666"))[#r]
      }
    }
    data = data + (reminder_content,)
  }

  creat_frame(
    mechanic.name,
    type: if "type" in mechanic { mechanic.type } else { none },
    data: data,
  )
}
