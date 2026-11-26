#import "/global.typ": *

#let ability_data = (
    name: "Enduring Soul",
    type: ("Ability", "Zephyr", "Martial Arts"),
    blocks: (
      (kind: "passive", effect: [When you roll Initiative, you gain 1 Hit Die if your result is 9 or less, 2 if it is 10 to 19, and 3 if it is 20 or more. Those you haven't spent are lost when combat ends.]),
    ),
)

#let enduring_soul = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.70 (Hit Dice equal to the actions you get on your first turn).

interpretation: Written with the Initiative bands of the Combat page, which give those actions.
*/
