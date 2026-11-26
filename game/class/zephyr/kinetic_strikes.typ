#import "/global.typ": *

#let ability_data = (
    name: "Kinetic Strikes",
    type: ("Ability", "Zephyr"),
    blocks: (
      (kind: "active", cost: (momentum_cost("X"),), effect: [When you make a melee attack, it deals the extra damage shown in Levels.]),
    ),
    levels: [
      *Level 1:* X more damage.\
      *Level 10:* #times(2, "X") more damage.
    ],
)

#let kinetic_strikes = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: the 2026-10-02 changelog (Momentum, level 1: "You may expend 1 Momentum to add 1 damage
to any melee attack"; Kinetic Marvel, level 10: "Double the damage granted by Momentum").

interpretation: A card named for Nimblium: the book gives this use of Momentum no name.
*/
