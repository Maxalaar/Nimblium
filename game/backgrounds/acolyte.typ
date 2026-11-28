#import "/global.typ": *

#let ability_data = (
    name: "Acolyte",
    type: ("Background",),
    blocks: (
      (kind: "narrative", effect: [You were raised in a temple, a monastery or a hermitage, far from the noise of the world. Your days were prayers, sacred texts, silence and service to others. You learned patience, humility and the stories of the gods. To you, the world has an order and a meaning, even when they are hard to see.]),
      (kind: "active", name: "Last Rites", cost: (actions(1),), limitation: per_safe_rest(1), effect: [An adjacent #kw_dying creature regains #LVL #HP.]),
    ),
    reminder: (conditions.dying,),
)

#let acolyte = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Nimblium's own background, not from the book: backgrounds are where you grew up,
with one small effect tied to that origin (user ruling 2026-11-28).
*/
