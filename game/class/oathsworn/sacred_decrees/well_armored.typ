#import "/global.typ": *

#let ability_data = (
    name: "Well Armored",
    type: ("Ability", "Oathsworn", "Sacred Decree"),
    blocks: (
      (kind: "passive", effect: [When you #kw_interpose, gain temp #HP equal to your #STR.]),
    ),
    reminder: (keywords.interpose,),
)

#let well_armored = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
