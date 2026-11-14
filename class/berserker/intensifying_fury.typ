#import "../../global.typ": *

#let ability_data = (
    name: "Intensifying Fury",
    type: (
        "Ability",
        "Berserker",
    ),
    blocks: (
      (kind: "passive", effect: [At the start of your turn, if you are #kw_raging, roll 1 Fury Die.]),
    ),
    reminder: (berserker_keywords.raging,),
)

#let intensifying_fury = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
