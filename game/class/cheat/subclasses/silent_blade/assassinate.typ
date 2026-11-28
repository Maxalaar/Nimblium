#import "/global.typ": *

#let ability_data = (
    name: "Assassinate",
    type: (
        "Ability",
        "Cheat",
        "Silent Blade",
    ),
    blocks: (
      (kind: "passive", effect: [When you #card_ref("Sneak Attack") an enemy with fewer max #HP than you, it dies.]),
    ),
)

#let assassinate = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "KILL" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
