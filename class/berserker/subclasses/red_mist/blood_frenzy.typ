#import "../../../../global.typ": *

#let ability_data = (
    name: "Blood Frenzy",
    type: (
        "Ability",
        "Berserker",
        "Red Mist",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: "1/turn",
        effect: [While Raging, whenever you crit or kill an enemy, change 1 Fury Die to the maximum.],
      ),
    ),
    reminder: (berserker_keywords.raging,),
)

#let blood_frenzy = creat_ability(ability_data)
