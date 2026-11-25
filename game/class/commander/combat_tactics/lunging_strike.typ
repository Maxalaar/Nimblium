#import "/global.typ": *

#let ability_data = (
    name: "Lunging Strike",
    type: ("Ability", "Commander", "Combat Tactic"),
    blocks: (
      (kind: "active", cost: (combat_dice_cost(1),), effect: [This attack has +1 Reach and deals extra damage equal to twice a roll of your Combat Die.]),
    ),
)

#let lunging_strike = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
