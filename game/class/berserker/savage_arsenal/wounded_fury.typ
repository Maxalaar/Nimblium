#import "/global.typ": *

#let ability_data = (
    name: "Wounded Fury",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever an enemy crits you, gain 1 Fury Die.]),
      (kind: "passive", effect: [Whenever you drop to 0 #HP, use #card_ref("Rage") for free.]),
    ),
)

#let wounded_fury = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "MORE BLOOD!" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
