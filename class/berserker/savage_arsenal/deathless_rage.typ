#import "../../../global.typ": *

#let ability_data = (
    name: "Deathless Rage",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Wound",),
        limitation: "1/turn",
        effect: [Gain 1 action.],
      ),
    ),
    reminder: (conditions.dying,),
)

#let deathless_rage = creat_ability(ability_data)
