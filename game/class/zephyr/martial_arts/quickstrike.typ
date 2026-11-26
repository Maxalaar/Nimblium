#import "/global.typ": *

#let ability_data = (
    name: "Quickstrike",
    type: ("Ability", "Zephyr", "Martial Arts"),
    blocks: (
      (kind: "passive", effect: [When you #kw_interpose, you may first make an unarmed strike against the attacker for free.]),
    ),
    reminder: (keywords.interpose,),
)

#let quickstrike = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.70.
*/
