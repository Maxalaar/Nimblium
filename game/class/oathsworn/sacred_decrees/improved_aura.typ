#import "/global.typ": *

#let ability_data = (
    name: "Improved Aura",
    type: ("Ability", "Oathsworn", "Sacred Decree"),
    blocks: (
      (kind: "passive", effect: [Your #kw_aura's Reach increases by 2.]),
    ),
    reminder: (keywords.aura,),
)

#let improved_aura = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
