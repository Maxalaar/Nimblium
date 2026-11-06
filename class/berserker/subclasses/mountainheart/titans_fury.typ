#import "../../../../global.typ": *

#let ability_data = (
    name: "Titan's Fury",
    type: (
        "Ability",
        "Berserker",
        "Mountainheart",
    ),
    blocks: (
      (kind: "passive", effect: [After you miss an attack or are crit by an enemy, Rage for free.]),
    ),
)

#let titans_fury = creat_ability(ability_data)
