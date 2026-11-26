#import "/global.typ": *

#let ability_data = (
    name: "Bloody Terror",
    type: ("Ability", "Oathsworn", "Oathbreaker"),
    blocks: (
      (kind: "passive", effect: [Attacks against you have 1 #kw_disadvantage for each Wound you have, up to 3.]),
    ),
    reminder: (keywords.disadvantage,),
)

#let bloody_terror = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.74 (level 15).
*/
