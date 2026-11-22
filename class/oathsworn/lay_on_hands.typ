#import "../../global.typ": *

#let ability_data = (
    name: "Lay on Hands",
    type: ("Ability", "Oathsworn"),
    blocks: (
      (kind: "passive", effect: [You have a pool of healing power of #times(5, LVL). It recharges on a #safe_rest.]),
      (kind: "active", cost: (actions(1),), effect: [Touch a creature and spend any amount of your healing power. It regains that many #HP.]),
    ),
)

#let lay_on_hands = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
