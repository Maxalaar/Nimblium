#import "../../../../global.typ": *

#let ability_data = (
    name: "Onslaught",
    type: (
        "Ability",
        "Berserker",
        "Red Mist",
    ),
    limitation: "1/round",
    effect:[
      While Raging, gain +2 speed. You may move for free.
    ],
    reminder: (berserker_keywords.raging,),
)

#let onslaught = creat_ability(ability_data)
