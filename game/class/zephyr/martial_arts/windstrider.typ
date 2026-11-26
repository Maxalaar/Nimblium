#import "/global.typ": *

#let ability_data = (
    name: "Windstrider",
    type: ("Ability", "Zephyr", "Martial Arts"),
    blocks: (
      (kind: "passive", effect: [When you move through a willing creature's space with Windstep from #card_ref("Maneuvers"), it may move with you and end in any space next to your path.]),
    ),
)

#let windstrider = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.70.
*/
