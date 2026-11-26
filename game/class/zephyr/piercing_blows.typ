#import "/global.typ": *

#let ability_data = (
    name: "Piercing Blows",
    type: ("Ability", "Zephyr"),
    blocks: (
      (kind: "active", cost: (momentum_cost("X"),), effect: [Before you make an unarmed strike, give it X #kw_advantage.]),
    ),
    reminder: (keywords.advantage,),
)

#let piercing_blows = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: the 2026-10-02 changelog (Piercing Blows, level 2: spend Momentum before an unarmed
strike to gain advantage for each spent).
*/
