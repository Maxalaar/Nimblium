#import "../../global.typ": *

#let ability_data = (
    name: "Quick Read",
    type: (
        "Ability",
        "Cheat",
    ),
    blocks: (
      (
        kind: "narrative",
        limitation: per_encounter(1),
        effect: [Gain advantage on an Assess check.],
      ),
    ),
)

#let quick_read = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
