#import "/global.typ": *

#let ability_data = (
    name: "Scholar",
    type: ("Background",),
    blocks: (
      (kind: "narrative", effect: [You grew up among books, in a library, an academy or a mage's tower. You spent your youth reading, studying and asking questions no one could answer. You know a lot about the past, the stars and the hidden rules of the world. To you, the world is a riddle, and knowledge is the key to everything.]),
      (kind: "active", name: "Bestiary", limitation: per_encounter(1), effect: [Choose a creature you can see. The GM tells you its resistances and vulnerabilities.]),
    ),
)

#let scholar = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Nimblium's own background, not from the book: backgrounds are where you grew up,
with one small effect tied to that origin (user ruling 2026-11-28).
*/
