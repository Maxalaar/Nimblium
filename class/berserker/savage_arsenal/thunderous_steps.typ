#import "../../../global.typ": *

#let ability_data = (
    name: "Thunderous Steps",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (kind: "passive", effect: [After moving at least 4 spaces while #keyword_style[Raging], you may deal STR Bludgeoning damage to all adjacent creatures.]),
    ),
    reminder: (berserker_keywords.raging,),
)

#let thunderous_steps = creat_ability(ability_data)
