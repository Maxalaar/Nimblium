#import "/global.typ": *

#let ability_data = (
    name: "Versatile Bowmaster",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (kind: "passive", effect: [When you attack with a #card_ref("Longbow"), you may roll 2d4 instead of 1d8.]),
      (kind: "passive", effect: [When you attack with a #card_ref("Crossbow"), you may roll 2d8 instead of 4d4.]),
    ),
)

#let versatile_bowmaster = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
