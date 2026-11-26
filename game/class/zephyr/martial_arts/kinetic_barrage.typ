#import "/global.typ": *

#let ability_data = (
    name: "Kinetic Barrage",
    type: ("Ability", "Zephyr", "Martial Arts"),
    blocks: (
      (kind: "passive", limitation: per_turn(1), effect: [When you make a melee attack and spend no #card_ref("Momentum", "Mom") charge on it, gain #DEX Mom charges.]),
    ),
)

#let kinetic_barrage = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: "(1/turn) Whenever you make a melee attack and spend no Momentum, gain DEX Momentum"
(was: a growing +STR damage bonus each time you missed).
*/
