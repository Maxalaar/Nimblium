#import "../../../../global.typ": *

#let ability_data = (
    name: "Unstoppable Brutality",
    type: (
        "Ability",
        "Berserker",
        "Red Mist",
    ),
    blocks: (
      (kind: "passive", effect: [While Raging, you may gain 1 Wound to reroll any attack or save.]),
    ),
    reminder: (berserker_keywords.raging,),
)

#let unstoppable_brutality = creat_ability(ability_data)
