#import "/global.typ": *

#let ability_data = (
    name: "Divine Grace",
    type: ("Ability", "Oathsworn", "Oath of Refuge"),
    blocks: (
      (kind: "passive", effect: [While you #kw_interpose, you take 10 less damage.]),
    ),
    reminder: (keywords.interpose,),
)

#let divine_grace = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

The book says "resistant to all damage"; Resistant is 10 less damage (changelog, Core Rules).
*/
