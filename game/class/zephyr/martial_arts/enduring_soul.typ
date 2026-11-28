#import "/global.typ": *

#let ability_data = (
    name: "Enduring Soul",
    type: ("Ability", "Zephyr", "Martial Arts"),
    blocks: (
      (kind: "passive", effect: [When combat starts, you gain #times(2, "Vitality") temp #HP.]),
    ),
)

#let enduring_soul = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.70 (Hit Dice equal to the actions you get on your first turn).

house-rule: 2 × Vitality temp HP when combat starts (book: as many Hit Dice as the actions of
your first turn); there are no Hit Dice and no Initiative (user ruling 2026-11-28). 2 is about
what the old Initiative gave on average.
*/
