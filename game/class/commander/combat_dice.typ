#import "/global.typ": *

#let mechanic_data = (
    name: "Combat Dice",
    type: ("Mechanic", "Commander"),
    description: [
      When you roll Initiative, gain #STR Combat Dice, of the size shown in Levels.

      Once per attack, you may spend Combat Dice to use a Combat Tactic on that attack. Combat Dice you haven't spent are lost when combat ends.
    ],
    levels: [
      *Level 2:* d6.\
      *Level 5:* d8.\
      *Level 9:* d10.\
      *Level 13:* d12.\
      *Level 17:* d20.
    ],
)

#let combat_dice = creat_mechanic(mechanic_data)

/*
review: style=2026-11-14 changelog=2026-10-02

The die size by level is in Levels; the extra Combat Dice from Fit for Any Battlefield are a
choice on the class sheet (commander_class_sheet.typ).

changelog: Fit for Any Battlefield moved from level 4 to level 2; the die upgrades are part
of Master Commander.
*/
