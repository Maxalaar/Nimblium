#import "/global.typ": *

#let ability_data = (
    name: "Slashing Mastery",
    type: ("Ability", "Commander", "Weapon Mastery"),
    blocks: (
      (kind: "passive", limitation: per_turn(1), effect: [Your attack with a slashing weapon can also hit 1 more creature adjacent to both you and your target.]),
    ),
)

#let slashing_mastery = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Reworked (was: slashing attacks can't miss unarmored enemies).
*/
