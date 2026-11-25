#import "/global.typ": *

#let ability_data = (
    name: "My Life, for My Friends",
    type: ("Ability", "Oathsworn"),
    blocks: (
      (kind: "passive", effect: [You can #kw_interpose for free.]),
    ),
    reminder: (keywords.interpose,),
)

#let my_life_for_my_friends = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
