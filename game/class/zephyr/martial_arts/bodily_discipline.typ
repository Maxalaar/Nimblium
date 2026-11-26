#import "/global.typ": *

#let ability_data = (
    name: "Bodily Discipline",
    type: ("Ability", "Zephyr", "Martial Arts"),
    blocks: (
      (kind: "active", cost: (actions(1),), limitation: per_encounter(1), effect: [End 1 condition on yourself, even #kw_dying.]),
    ),
    reminder: (conditions.dying,),
)

#let bodily_discipline = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.70 and the 2026-10-02 changelog (any single condition, including Dying).

house-rule: Once per encounter (the book sets no limit).
*/
