#import "../../global.typ": *

#let mechanic_data = (
    name: "Thrill of the Hunt Charge",
    type: (
        "Mechanic",
        "Hunter",
    ),
    description: [
      #thrill_of_the_hunt abilities spend #TotH charges. Gain 1 #TotH charge whenever:\
      • you hit a #kw_marked creature with a melee attack;\
      • you crit a #kw_marked creature with a ranged attack;\
      • a #kw_marked creature dies.

      #thrill_of_the_hunt abilities can't miss. Abilities that spend charges can't generate new ones. Unused charges are lost when combat ends.
    ],
    reminder: (hunter_keywords.marked,),
)

#let thrill_of_the_hunt_charge = creat_mechanic(mechanic_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
