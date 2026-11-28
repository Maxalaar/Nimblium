#import "/global.typ": *

#let ability_data = (
    name: "Experienced Commander",
    type: ("Ability", "Commander", "Champion of the Vanguard"),
    blocks: (
      (kind: "passive", effect: [#card_ref("Coordinated Strike") can target 1 more ally.]),
    ),
)

#let experienced_commander = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: No longer grants +1 use of Coordinated Strike.
*/
