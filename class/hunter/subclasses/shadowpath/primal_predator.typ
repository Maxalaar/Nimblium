#import "../../../../global.typ": *

#let ability_data = (
    name: "Primal Predator",
    type: (
        "Ability",
        "Hunter",
        "Shadowpath",
    ),
    blocks: (
      (
        kind: "active",
        limitation: per_encounter(1),
        effect: [Your weapon attacks ignore cover and armor this turn.],
      ),
    ),
)

#let primal_predator = creat_ability(ability_data)
