#import "../../global.typ": *

#let ability_data = (
    name: "Revitalizing Blessing",
    type: (
        "Ability",
        "Shepherd",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: per_round(1),
        effect: [Whenever you roll a 6 or higher on one or more healing dice, the target may recover 1 Wound.],
      ),
    ),
)

#let revitalizing_blessing = creat_ability(ability_data)
