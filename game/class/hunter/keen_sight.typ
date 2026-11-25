#import "/global.typ": *

#let ability_data = (
    name: "Keen Sight",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (kind: "narrative", effect: [You have #kw_advantage on Perception checks.]),
    ),
)

#let keen_sight = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
