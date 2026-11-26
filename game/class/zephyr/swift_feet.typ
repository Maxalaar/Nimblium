#import "/global.typ": *

#let ability_data = (
    name: "Swift Feet",
    type: ("Ability", "Zephyr"),
    blocks: (
      (kind: "passive", effect: [While you wear no armor, your #speed and your Initiative increase by the bonus shown in Levels.]),
    ),
    levels: [
      *Level 9:* +2.\
      *Level 16:* +4.
    ],
)

#let swift_feet = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: the 2026-10-02 changelog (+2 Speed and Initiative at level 9, and again at 16; was:
+2 speed and +LVL Initiative at level 2, +2 speed at 9).
*/
