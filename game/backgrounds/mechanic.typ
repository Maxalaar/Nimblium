#import "/global.typ": *

#let ability_data = (
    name: "Mechanic",
    type: ("Background",),
    blocks: (
      (kind: "narrative", effect: [You grew up among engines, gears, pipes and sparks. You learned to take machines apart, find what is broken and make them run again. Grease under your nails doesn't bother you, but a strange noise in an engine does. To you, everything in the world is a mechanism, and every mechanism can be fixed.]),
      (kind: "active", name: "Jury-Rig", cost: (actions(1),), limitation: per_safe_rest(1), effect: [An item you hold that has charges regains 1 charge.]),
    ),
)

#let mechanic = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Nimblium's own background, not from the book: backgrounds are where you grew up,
with one small effect tied to that origin (user ruling 2026-11-28).

interpretation: It costs 1 action, so that a charge can't be regained for free in the middle of a fight.
*/
