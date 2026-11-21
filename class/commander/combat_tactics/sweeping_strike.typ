#import "../../../global.typ": *

#let ability_data = (
    name: "Sweeping Strike",
    type: ("Ability", "Commander", "Combat Tactic"),
    blocks: (
      (kind: "active", cost: (combat_dice_cost(1), actions(1)), tags: ("AoE",), effect: [Attack every creature in a connected area within your weapon's Reach. Roll your Combat Die once and add it to the damage against each of them.]),
    ),
)

#let sweeping_strike = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Was 2 actions; now 1 additional action, the Combat Die damage applies to every
target, and the usual AoE rules apply (no miss on a 1, no crit).
*/
