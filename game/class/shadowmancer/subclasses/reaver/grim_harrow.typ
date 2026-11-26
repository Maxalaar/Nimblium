#import "/global.typ": *

#let ability_data = (
    name: "Grim Harrow",
    type: ("Ability", "Shadowmancer", "Reaver"),
    blocks: (
      (kind: "passive", effect: [When you attack with your #card_ref("Bonescythe"), you may split its dice among any creatures within its Reach. Each die counts as a #primary_die.]),
    ),
)

#let grim_harrow = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.78 (level 7) and the 2026-10-02 changelog ("treat each die as Primary").
*/
