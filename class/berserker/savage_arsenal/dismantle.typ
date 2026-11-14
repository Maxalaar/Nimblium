#import "../../../global.typ": *

#let ability_data = (
    name: "Dismantle",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (
        kind: "active",
        cost: (fury_dice_cost("X"),),
        effect: [When you roll an attack, increase its #primary_die by 1 for each Fury Die spent.],
      ),
    ),
)

#let dismantle = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
