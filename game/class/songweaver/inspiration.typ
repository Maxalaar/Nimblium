#import "/global.typ": *

#let mechanic_data = (
    name: "Inspiration",
    type: ("Mechanic", "Songweaver"),
    description: [
      You have #times(2, WIL) Inspiration charges. They recharge on a #safe_rest.

      #card_ref("Songweaver's Inspiration") and other Songweaver abilities spend them.
    ],
    levels: [
      *Level 3:* When combat starts, you regain 2 spent Inspiration charges. You lose them if you haven't spent them when combat ends.
    ],
)

#let inspiration = creat_mechanic(mechanic_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Quick Wit (level 3) is a Levels line.

interpretation: The book counts "uses" of Songweaver's Inspiration (2×WIL per Safe Rest), which
Heroic Ballad, Quick Wit and Rhapsody of the Normal also count. Written as a resource of its
own, like the Commander's Combat Dice (user ruling 2026-11-26).
*/
