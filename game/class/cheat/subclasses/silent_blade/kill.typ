#import "/global.typ": *

#let ability_data = (
    name: "KILL",
    type: (
        "Ability",
        "Cheat",
        "Silent Blade",
    ),
    blocks: (
      (kind: "passive", effect: [When you #card_ref("Sneak Attack") an enemy with fewer max #HP than you, it dies.]),
    ),
)

#let kill = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
