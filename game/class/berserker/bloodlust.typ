#import "/global.typ": *

#let ability_data = (
    name: "Bloodlust",
    type: (
        "Ability",
        "Berserker",
    ),
    blocks: (
      (
        kind: "active",
        cost: (fury_dice_cost("X"),),
        effect: [During your turn, move up to #DEX spaces for each Fury Die spent.],
      ),
    ),
)

#let bloodlust = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
