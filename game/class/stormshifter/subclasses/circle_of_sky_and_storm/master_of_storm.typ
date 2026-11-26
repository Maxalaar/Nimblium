#import "/global.typ": *

#let ability_data = (
    name: "Master of Storm",
    type: ("Ability", "Stormshifter", "Sky & Storm"),
    blocks: (
      (kind: "passive", effect: [You can concentrate on 1 Lightning spell and 1 Wind spell at the same time.]),
      (kind: "passive", limitation: per_encounter(1), effect: [A tiered spell you cast costs 1 fewer action and 3 fewer mana.]),
    ),
)

#let master_of_storm = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: 1/encounter, a tiered spell costs 1 fewer action and 3 fewer mana (was: 1/Safe
Rest, Ride the Lightning for 0 mana).

interpretation: The changelog only mentions the cost reduction: the double concentration of
the book is kept.
*/
