#import "/global.typ": *

#let ability_data = (
    name: "Unyielding Resolve",
    type: ("Ability", "Zephyr"),
    blocks: (
      (kind: "passive", effect: [Each encounter, you ignore the first Wounds you would gain, as many as shown in Levels. Abilities that trigger when you gain a Wound still trigger.]),
    ),
    levels: [
      *Level 10:* 1 Wound.\
      *Level 13:* 2 Wounds.\
      *Level 17:* 3 Wounds.
    ],
    reminder: (conditions.dying,),
)

#let unyielding_resolve = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.68-69 and the 2026-10-02 changelog (levels 10, 13 and 17; was 4, 10 and 17).

house-rule: There are no saves: advantage on STR saves while Dying becomes advantage on the
STR checks of the Dying condition.

house-rule: The Dying condition has no STR check anymore: the level 17 advantage is gone.
*/
