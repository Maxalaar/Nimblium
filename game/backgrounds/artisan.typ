#import "/global.typ": *

#let ability_data = (
    name: "Artisan",
    type: ("Background",),
    blocks: (
      (kind: "narrative", effect: [You grew up in a workshop, among hammers, chisels and the smell of hot metal or fresh wood. You learned your craft from a master, piece after piece, until your hands knew it by heart. You take pride in work done right. To you, the world is made of things, and a good thing is made to last.]),
      (kind: "active", name: "Weak Spot", limitation: per_encounter(1), effect: [When you hit a creature, the attack ignores its #defense.]),
    ),
)

#let artisan = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Nimblium's own background, not from the book: backgrounds are where you grew up,
with one small effect tied to that origin (user ruling 2026-11-28).
*/
