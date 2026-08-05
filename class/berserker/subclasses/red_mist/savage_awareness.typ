#import "../../../../global.typ": *

#let ability_data = (
    name: "Savage Awareness",
    type: (
        "Ability",
        "Berserker",
        "Red Mist",
    ),
    blocks: (
      (kind: "passive", effect: [Advantage on perception checks to notice or track down blood.]),
      (kind: "passive", effect: [While Raging you get Blindsight 2.]),
    ),
    reminder: (berserker_keywords.raging, keywords.blindsight),
)

#let savage_awareness = creat_ability(ability_data)
