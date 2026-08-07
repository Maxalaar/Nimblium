#import "../../global.typ": *

#let ability_data = (
    name: "Keen Sight",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (kind: "narrative", effect: [Advantage on Perception checks.]),
    ),
)

#let keen_sight = creat_ability(ability_data)
