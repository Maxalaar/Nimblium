#import "../../../global.typ": *

#let ability_data = (
    name: "Hold the Line!",
    type: ("Ability", "Commander", "Commander's Order"),
    blocks: (
      (kind: "active", cost: (actions(1),), limitation: per_encounter(1), effect: [When an ally drops to 0 #HP, its #HP becomes #times(3, LVL).]),
    ),
)

#let hold_the_line = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
