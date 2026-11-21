#import "../../global.typ": *

#let mechanic_data = (
    name: "Combat Dice",
    type: ("Mechanic", "Commander"),
    description: [
      When you roll Initiative, gain #STR Combat Dice. Each is a d6.

      Once per attack, you may spend Combat Dice to use a Combat Tactic on that attack. Combat Dice you haven't spent are lost when combat ends.
    ],
)

#let combat_dice = creat_mechanic(mechanic_data)

/*
review: style=2026-11-14 changelog=2026-10-02

The die size by level (d8 at 5, d10 at 9, d12 at 13, d20 at 17) and the extra Combat Dice
from Fit for Any Battlefield are on the class sheet (commander_class_sheet.typ).

changelog: Fit for Any Battlefield moved from level 4 to level 2; the die upgrades are part
of Master Commander.
*/
