#import "/global.typ": *

#let ability_data = (
    name: "Swift Fury",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [Whenever you gain one or more #card_ref("Fury Dice"), you may move up to #DEX spaces, ignoring #kw_difficult_terrain.],
      ),
    ),
    reminder: (keywords.difficult_terrain,),
)

#let swift_fury = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
