#import "../../../../global.typ": *

#let ability_data = (
    name: "Savage Awareness",
    type: (
        "Ability",
        "Berserker",
        "Red Mist",
    ),
    effect:[
      Advantage on Perception checks to notice or track down blood. Blindsight 2 while Raging.
    ],
    reminder: (berserker_keywords.raging, keywords.blindsight),
)

#let savage_awareness = creat_ability(ability_data)
