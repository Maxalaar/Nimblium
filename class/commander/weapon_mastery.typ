#import "../../global.typ": *

#let ability_data = (
    name: "Weapon Mastery",
    type: ("Ability", "Commander"),
    blocks: (
      (kind: "passive", limitation: per_round(2), effect: [Sheathe a weapon and draw another for free.]),
    ),
)

#let weapon_mastery = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

The Weapon Mastery options (Slashing, Bludgeoning, Piercing) and the levels at which you
choose them are on the class sheet; each option has its own card.
*/
