#import "/global.typ": *

#let ability_data = (
    name: "Blood Casting",
    type: ("Ability", "Shadowmancer", "Reaver"),
    blocks: (
      (kind: "active", cost: (wounds(1),), effect: [Cast a tiered spell you know, at the highest tier you can cast.]),
    ),
)

#let blood_casting = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.78 (level 11).

interpretation: Renamed from "My Blood, My Power" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
