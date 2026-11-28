#import "/global.typ": *

#let ability_data = (
    name: "Rally the Fallen",
    type: ("Ability", "Commander", "Commander's Order"),
    blocks: (
      (kind: "active", cost: (actions(1),), limitation: per_safe_rest(1), effect: [When an ally within 18 spaces drops to 0 #HP, its #HP becomes #times(3, LVL).]),
    ),
)

#let rally_the_fallen = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
house-rule: 1/Rest instead of 1/encounter (user ruling 2026-11-27: an ally could be dropped to 0 HP
on purpose in every fight to regain 3×LVL HP; same as Orc-folk's Relentless).

interpretation: Renamed from "Hold the Line!" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
