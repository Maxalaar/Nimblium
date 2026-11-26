#import "/global.typ": *

#let ability_data = (
    name: "Iron Defense",
    type: ("Ability", "Zephyr"),
    blocks: (
      (kind: "passive", effect: [While you wear no armor, add the bonus shown in Levels to your #defense.]),
    ),
    levels: [
      *Level 1:* +#STR.\
      *Level 4:* +#times(3, STR).
    ],
)

#let iron_defense = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.67 (armor equals DEX+STR while unarmored) and the 2026-10-02 changelog.

changelog: Iron Defense (2) is (3×STR)+DEX at level 4 (was: Defense doubled at level 13).

house-rule: Defense is DEX + armor + shield, so Iron Defense adds STR (then 3×STR).
*/
