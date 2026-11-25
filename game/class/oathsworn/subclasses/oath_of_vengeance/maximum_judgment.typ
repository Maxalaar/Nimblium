#import "/global.typ": *

#let ability_data = (
    name: "Maximum Judgment",
    type: ("Ability", "Oathsworn", "Oath of Vengeance"),
    blocks: (
      (kind: "passive", effect: [When you are attacked, set one of your Judgment Dice to its maximum.]),
    ),
)

#let maximum_judgment = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
