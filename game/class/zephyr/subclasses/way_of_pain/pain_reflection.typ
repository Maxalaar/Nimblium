#import "/global.typ": *

#let ability_data = (
    name: "Pain Reflection",
    type: ("Ability", "Zephyr", "Way of Pain"),
    blocks: (
      (kind: "passive", limitation: per_round(1), effect: [When you take damage, you may take half of it, and deal that much to another creature within your Reach.]),
    ),
    levels: [
      *Level 15:* It also deals that much damage to a 2nd creature within Reach 4.
    ],
)

#let pain_reflection = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: the 2026-10-02 changelog (level 7; Echoed Agony, level 15: Pain Reflection reaches a
2nd creature within Reach 4, written here as a Levels line).

interpretation: Renamed from "Share My Pain" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
