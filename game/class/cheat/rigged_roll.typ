#import "/global.typ": *

#let ability_data = (
    name: "Rigged Roll",
    type: (
        "Ability",
        "Cheat",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1),),
        limitation: per_safe_rest(1),
        effect: [When a #kw_distracted enemy attacks you, change its #primary_die roll to whatever you like. Changing it to the minimum value counts as a miss.],
      ),
    ),
    reminder: (keywords.distracted,),
)

#let rigged_roll = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "THAT'S Not What Happened!" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
