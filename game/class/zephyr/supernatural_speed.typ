#import "/global.typ": *

#let ability_data = (
    name: "Supernatural Speed",
    type: ("Ability", "Zephyr"),
    blocks: (
      (kind: "active", cost: (momentum_cost("X"),), effect: [When an attack hits you while you wear no armor, you take X less damage.]),
    ),
)

#let supernatural_speed = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: the 2026-10-02 changelog (Supernatural Speed, level 5: "While unarmored, you may use
Momentum to treat a Primary Die rolled against you as if it rolled 1 lower/Momentum spent").

house-rule: 1 less damage per Mom charge, after the roll, instead of lowering the attacker's
Primary Die (simpler to play; it no longer cancels crits or turns hits into misses).
*/
