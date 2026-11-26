#import "/global.typ": *

#let ability_data = (
    name: "Cyclonic Pull",
    type: ("Ability", "Zephyr", "Martial Arts"),
    blocks: (
      (kind: "passive", effect: [When a melee attack against you deals you no damage, you may swap places with the attacker.]),
    ),
)

#let cyclonic_pull = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: the 2026-10-02 changelog (Use Momentum is split in two: Cyclonic Pull swaps places
with the attacker).

interpretation: "Whenever you avoid all of the damage of a melee attack (whether it misses or
you Defend)" becomes "deals you no damage".
*/
