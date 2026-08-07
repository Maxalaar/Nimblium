#import "../../global.typ": *

#let ability_data = (
    name: "Quick Read",
    type: (
        "Ability",
        "Cheat",
    ),
    blocks: (
      (kind: "narrative", limitation: "1/encounter", effect: [Gain advantage on an Assess check.]),
      (kind: "narrative", limitation: "1/day", effect: [Gain advantage on an Examination check.]),
    ),
)

#let quick_read = creat_ability(ability_data)
