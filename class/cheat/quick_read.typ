#import "../../global.typ": *

#let ability_data = (
    name: "Quick Read",
    type: (
        "Ability",
        "Cheat",
    ),
    blocks: (
      (kind: "narrative", limitation: per_encounter(1), effect: [Gain advantage on an Assess check.]),
      (kind: "narrative", limitation: per_day(1), effect: [Gain advantage on an Examination check.]),
    ),
)

#let quick_read = creat_ability(ability_data)
