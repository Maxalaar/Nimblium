#import "../../../../global.typ": *

#let ability_data = (
    name: "Life is Beautiful",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Mercy",
    ),
    blocks: (
      (kind: "narrative", effect: [Harmless and lovely creatures such as butterflies and hummingbirds are attracted to your presence and often follow you. Flowers bloom more vibrantly in your presence.]),
    ),
)

#let life_is_beautiful = creat_ability(ability_data)
