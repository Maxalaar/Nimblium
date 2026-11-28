#import "/global.typ": *

#let ability_data = (
    name: "Laborer",
    type: ("Background",),
    blocks: (
      (kind: "narrative", effect: [You grew up working the fields, the mines, the docks or the factories. Your hands are hard, your back is strong, and you have never had much. You know the value of a day's work and of a shared meal. To you, the world is built by people like you, and taken by those who never lift a finger.]),
      (kind: "passive", name: "Strong Back", effect: [Your inventory has 4 more slots.]),
    ),
)

#let laborer = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Nimblium's own background, not from the book: backgrounds are where you grew up,
with one small effect tied to that origin (user ruling 2026-11-28).
*/
