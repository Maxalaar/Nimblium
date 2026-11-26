#import "/global.typ": *

#let ability_data = (
    name: "My Blood, My Power",
    type: ("Ability", "Shadowmancer", "Reaver"),
    blocks: (
      (kind: "active", cost: (wounds(1),), effect: [Cast a tiered spell you know, at the highest tier you can cast.]),
    ),
)

#let my_blood_my_power = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.78 (level 11).
*/
