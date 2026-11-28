#import "/global.typ": *

#let ability_data = (
    name: "Noble",
    type: ("Background",),
    blocks: (
      (kind: "narrative", effect: [You grew up in a great house, among servants, tutors and portraits of your ancestors. You learned etiquette, history and how to smile at people you hate. Every word at court is a move in a game you were born to play. To you, the world is a ladder of ranks, and your name is both a gift and a debt.]),
      (kind: "passive", name: "Heirloom", effect: [You can carry 1 more magic item.]),
    ),
)

#let noble = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Nimblium's own background, not from the book: backgrounds are where you grew up,
with one small effect tied to that origin (user ruling 2026-11-28).
*/
