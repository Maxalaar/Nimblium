#import "/global.typ": *

#let ability_data = (
    name: "Quick Read",
    type: (
        "Ability",
        "Cheat",
    ),
    blocks: (
      (
        kind: "active",
        limitation: per_encounter(1),
        effect: [Choose a creature you can see. This round, every #primary_die it rolls against you gets~−1.],
      ),
    ),
)

#let quick_read = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Assess is removed from the game. Quick Read becomes a free Anticipate Danger
against one creature, once per encounter (the book: advantage on an Assess check, and on an
Examination check 1/day).
*/
