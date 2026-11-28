#import "/global.typ": *

#let ability_data = (
    name: "Pain Momentum",
    type: ("Ability", "Zephyr", "Way of Pain"),
    blocks: (
      (kind: "passive", effect: [Taking damage doesn't make you lose your #card_ref("Momentum", "Mom") charges.]),
      (kind: "active", limitation: per_round(1), effect: [Gain 1 Wound to gain 10 Mom charges.]),
    ),
)

#let pain_momentum = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: the 2026-10-02 changelog (level 3: "Damage no longer causes you to lose Momentum.
(1/round) You may take 1 Wound to gain 10 Momentum for free.").

interpretation: Renamed from "Bring the Pain" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
