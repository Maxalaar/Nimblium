#import "../../../global.typ": *

#let ability_data = (
    name: "Swift Fury",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever you gain one or more Fury Dice, move up to DEX spaces ignoring difficult terrain.]),
    ),
    reminder: (keywords.difficult_terrain,),
)

#let swift_fury = creat_ability(ability_data)
