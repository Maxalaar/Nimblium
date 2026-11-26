#import "/global.typ": *

#let ability_data = (
    name: "Inspiring Anthem",
    type: ("Ability", "Songweaver", "Lyrical Weaponry"),
    blocks: (
      (kind: "active", cost: (actions(1),), limitation: per_encounter(1), effect: [Each #kw_dying ally within 18 spaces regains 1 #HP and gains 1 action, which it may spend immediately, as if it were its turn.]),
    ),
    reminder: (conditions.dying,),
)

#let inspiring_anthem = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book says "who can hear you". Written as within 18 spaces (user ruling 2026-11-26),
so that no GM ruling is needed. The action may be spent at once (user ruling 2026-11-26).
*/
