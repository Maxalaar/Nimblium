#import "/global.typ": *

#let ability_data = (
    name: "Share My Pain",
    type: ("Ability", "Zephyr", "Way of Pain"),
    blocks: (
      (kind: "passive", limitation: per_round(1), effect: [When you take damage, you may take half of it, and deal that much to another creature within your Reach.]),
    ),
    levels: [
      *Level 15:* It also deals that much damage to a 2nd creature within Reach 4.
    ],
)

#let share_my_pain = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: the 2026-10-02 changelog (level 7; Echoed Agony, level 15: Share My Pain reaches a
2nd creature within Reach 4, written here as a Levels line).
*/
