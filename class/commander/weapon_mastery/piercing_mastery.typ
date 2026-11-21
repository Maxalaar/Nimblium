#import "../../../global.typ": *

#let ability_data = (
    name: "Piercing Mastery",
    type: ("Ability", "Commander", "Weapon Mastery"),
    blocks: (
      (kind: "passive", limitation: per_turn(1), effect: [Your attack with a piercing weapon can also hit another creature behind your target, within Reach.]),
    ),
)

#let piercing_mastery = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Reworked (was: ignore Medium Armor).
*/
