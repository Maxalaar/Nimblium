#import "../../global.typ": *

#let ability_data = (
    name: "Intensifying Fury",
    type: (
        "Ability",
        "Berserker",
    ),
    blocks: (
      (kind: "passive", effect: [If you are #kw_raging at the beginning of your turn, roll 1 Fury Die.]),
    ),
    reminder: (berserker_keywords.raging,),
)

#let intensifying_fury = creat_ability(ability_data)
