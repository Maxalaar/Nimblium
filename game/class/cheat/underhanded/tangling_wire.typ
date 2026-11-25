#import "/global.typ": *

#let ability_data = (
    name: "Tangling Wire",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever you Grapple a creature, you may make it #kw_restrained instead.]),
    ),
    reminder: (conditions.restrained,),
)

#let tangling_wire = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
