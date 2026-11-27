#import "/global.typ": *

#let ability_data = (
    name: "Hold the Line!",
    type: ("Ability", "Commander", "Commander's Order"),
    blocks: (
      (kind: "active", cost: (actions(1),), limitation: per_safe_rest(1), effect: [When an ally within 18 spaces drops to 0 #HP, its #HP becomes #times(3, LVL).]),
    ),
)

#let hold_the_line = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
house-rule: 1/Rest instead of 1/encounter (user ruling 2026-11-27: an ally could be dropped to 0 HP
on purpose in every fight to regain 3×LVL HP; same as Orc-folk's Relentless).
*/
