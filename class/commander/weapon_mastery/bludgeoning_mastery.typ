#import "../../../global.typ": *

#let ability_data = (
    name: "Bludgeoning Mastery",
    type: ("Ability", "Commander", "Weapon Mastery"),
    blocks: (
      (kind: "passive", limitation: per_turn(1), effect: [Your attack with a bludgeoning weapon deals 10 more damage to an armored creature.]),
    ),
)

#let bludgeoning_mastery = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Reworked (was: ignore Heavy Armor on a Primary Die of 7 or more).
*/
