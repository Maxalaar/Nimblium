#import "/global.typ": *

#let ability_data = (
    name: "Enduring Soul",
    type: ("Ability", "Zephyr", "Martial Arts"),
    blocks: (
      (kind: "passive", effect: [When you roll Initiative, you gain temp #HP. On 9 or less, you gain Vitality. On 10 to 19, you gain #times(2, "Vitality"). On 20 or more, you gain #times(3, "Vitality").]),
    ),
)

#let enduring_soul = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.70 (Hit Dice equal to the actions you get on your first turn).

interpretation: Written with the Initiative bands of the Combat page, which give those actions.

house-rule: Temp HP by Initiative band, 1, 2 or 3 × (Vitality + STR) (book: that many Hit Dice);
there are no Hit Dice.
*/
