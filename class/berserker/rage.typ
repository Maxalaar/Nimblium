#import "../../global.typ": *

#let ability_data = (
    name: "Rage",
    type: (
        "Ability",
        "Berserker",
    ),
    limitation: "1/turn",
    cost: (
        "1 Action",
    ),
    effect:[
      Roll a 1d4 Fury Die and you become Raging.\
      *Level 5:* roll 2 Fury Dice instead.\
    ],
    reminder: (berserker_keywords.raging,),
)

#let rage = creat_ability(ability_data)
