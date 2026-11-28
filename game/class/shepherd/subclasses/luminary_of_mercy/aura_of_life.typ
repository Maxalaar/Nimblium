#import "/global.typ": *

#let ability_data = (
    name: "Aura of Life",
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

#let aura_of_life = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "Life is Beautiful" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
