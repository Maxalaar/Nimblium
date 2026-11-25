#import "/global.typ": *

#let ability_data = (
    name: "Reliable Justice",
    type: ("Ability", "Oathsworn", "Sacred Decree"),
    blocks: (
      (kind: "passive", effect: [When you roll Judgment Dice, roll with #kw_advantage.]),
    ),
    reminder: (keywords.advantage,),
)

#let reliable_justice = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
