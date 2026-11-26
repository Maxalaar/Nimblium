#import "/global.typ": *

#let ability_data = (
    name: "Radiant Judgment",
    type: ("Ability", "Oathsworn"),
    blocks: (
      (kind: "passive", effect: [When an enemy attacks you, if you have no Judgment Dice, roll your Judgment Dice, shown in Levels. If your next Reach attack this encounter hits, it deals that much more radiant damage. The dice are spent whether you hit or miss.]),
    ),
    levels: [
      *Level 1:* 2d6.\
      *Level 3:* 2d8.\
      *Level 5:* 2d10.\
      *Level 8:* 2d12.\
      *Level 10:* 2d20.\
      *Level 14:* 3d20.
    ],
)

#let radiant_judgment = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Spent on your next Reach attack this encounter (was: your next melee attack), so
a Reach spell can use them too.

The die size by level (d8 at 3, d10 at 5, d12 at 8, d20 at 10) and the extra die at level 14
are in Levels.
*/
