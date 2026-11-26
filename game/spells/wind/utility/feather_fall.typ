#import "/global.typ": *

#let spell_data = (
    name: "Feather Fall",
    type: ("Spell", "Wind", "Utility"),
    cost: (actions(1), per_round(1)),
    reach: "6",
    effect: [When a creature within Reach falls, you may cast this spell. It floats gently to the ground, unharmed.],
)

#let feather_fall = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
