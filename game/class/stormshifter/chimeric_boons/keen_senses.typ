#import "/global.typ": *

#let ability_data = (
    name: "Keen Senses",
    type: ("Ability", "Stormshifter", "Chimeric Boon"),
    blocks: (
      (kind: "narrative", effect: [You have #kw_advantage on Perception checks.]),
      (kind: "passive", effect: [#kw_blind has no effect on you.]),
    ),
)

#let keen_senses = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: The advantage on Assess checks is gone with Assess (guides/house_rules.txt).
*/
