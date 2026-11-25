#import "/global.typ": *

#let ability_data = (
    name: "Beguiling Influence",
    type: ("Ability", "Shadowmancer", "Lesser Invocation"),
    blocks: (
      (kind: "passive", limitation: per_safe_rest(1), effect: [You may reroll an Influence check.]),
    ),
)

#let beguiling_influence = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: 1/Safe Rest (was 1/day).
*/
