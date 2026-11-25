#import "/global.typ": *

#let ability_data = (
    name: "Titan's Fury",
    type: (
        "Ability",
        "Berserker",
        "Mountainheart",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever you miss with an attack or an enemy crits you, use #card_ref("Rage") for free.]),
    ),
)

#let titans_fury = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
