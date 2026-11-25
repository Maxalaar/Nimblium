#import "/global.typ": *

#let ability_data = (
    name: "The Setup",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1),),
        limitation: per_round(1),
        effect: [When an ally misses a creature adjacent to you, make an opportunity attack against it. It counts as #kw_distracted for this attack.],
      ),
    ),
    reminder: (keywords.distracted,),
)

#let the_setup = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
