#import "../../global.typ": *

#let ability_data = (
    name: "Rage",
    type: (
        "Ability",
        "Berserker",
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action",),
        limitation: "1/turn",
        effect: [
          Roll a Fury Die and you become Raging.\
          *Level 5:* roll 2 Fury Dice instead.\
        ],
      ),
    ),
    reminder: (berserker_keywords.raging,),
)

#let rage = creat_ability(ability_data)
