#import "../../../../global.typ": *

#let ability_data = (
    name: "Opportunistic Frenzy",
    type: (
        "Ability",
        "Berserker",
        "Red Mist",
    ),
    effect:[
      While Raging, you can make opportunity attacks without disadvantage, and you may make them whenever an enemy enters your melee weapon’s reach.
    ],
    reminder: (berserker_keywords.raging,),
)

#let opportunistic_frenzy = creat_ability(ability_data)
