#import "/global.typ": *

#let ability_data = (
    name: "Repelling Blast",
    type: ("Ability", "Shadowmancer", "Greater Invocation"),
    blocks: (
      (kind: "passive", effect: [When #card_ref("Shadow Blast") hits, the target suffers #kw_knockback 2.]),
    ),
    reminder: (keywords.knockback,),
)

#let repelling_blast = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: "On hit: knockback 2" (was: push a Medium or smaller creature up to 2 spaces).
*/
