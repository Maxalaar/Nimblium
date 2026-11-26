#import "/global.typ": *

#let ability_data = (
    name: "Twisting Deflection",
    type: ("Ability", "Zephyr", "Martial Arts"),
    blocks: (
      (kind: "active", cost: (actions(1),), limitation: per_round(1), effect: [When a melee attack misses you, the attacker makes the same attack against another creature of your choice within its Reach.]),
    ),
)

#let twisting_deflection = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: the 2026-10-02 changelog (Use Momentum is split in two: Twisting Deflection, 1
action, another target within Reach is hit instead).

house-rule: It triggers on a miss and the attacker repeats the attack (book: when you avoid
all the damage of a melee attack, another target within reach is hit instead).
*/
