#import "../../../../global.typ": *

#let ability_data = (
    name: "Life is Beautiful",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Mercy",
    ),
    blocks: (
      (
        kind: "narrative",
        effect: [Harmless and lovely creatures such as butterflies and hummingbirds are drawn to you and often follow you. Flowers bloom more vibrantly near you.],
      ),
    ),
)

#let life_is_beautiful = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
