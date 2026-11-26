#import "/global.typ": *

#let ability_data = (
    name: "Infuse Strength",
    type: ("Ability", "Zephyr"),
    blocks: (
      (kind: "passive", effect: [When you make an unarmed strike, you may spend Hit Dice. Roll them and add them to its damage. If you do, the target regains that many #HP instead of taking damage.]),
    ),
)

#let infuse_strength = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.68 (level 6) and the 2026-10-02 changelog (it now rides on any unarmed
strike: expend Hit Dice, add them to the strike's total, heal instead of dealing damage).
*/
