#import "/global.typ": *

#let ability_data = (
    name: "Bring the Pain",
    type: ("Ability", "Zephyr", "Way of Pain"),
    blocks: (
      (kind: "passive", effect: [Taking damage doesn't make you lose your #card_ref("Momentum", "Mom") charges.]),
      (kind: "active", limitation: per_round(1), effect: [Gain 1 Wound to gain 10 Mom charges.]),
    ),
)

#let bring_the_pain = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: the 2026-10-02 changelog (level 3: "Damage no longer causes you to lose Momentum.
(1/round) You may take 1 Wound to gain 10 Momentum for free.").
*/
