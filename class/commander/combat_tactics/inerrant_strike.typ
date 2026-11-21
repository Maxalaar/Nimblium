#import "../../../global.typ": *

#let ability_data = (
    name: "Inerrant Strike",
    type: ("Ability", "Commander", "Combat Tactic"),
    blocks: (
      (kind: "active", cost: (combat_dice_cost(1),), effect: [When you miss, you hit instead. Add 1 to the #primary_die and deal extra damage equal to a roll of your Combat Die.]),
    ),
)

#let inerrant_strike = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: No longer rerolls the miss.
*/
