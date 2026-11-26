#import "/global.typ": *

#let ability_data = (
    name: "Windborne",
    type: ("Ability", "Zephyr"),
    blocks: (
      (kind: "passive", effect: [You have 1 more action each turn. While #kw_dying, you have 2 actions at most.]),
    ),
    reminder: (conditions.dying,),
)

#let windborne = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.69 (level 20). Its +1 to any 2 stats is on the class sheet, its extra Burst
of Speed on the Burst of Speed card.
*/
