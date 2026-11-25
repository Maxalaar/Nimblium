#import "/global.typ": *

#let spell_data = (
    name: "Gravecraft",
    type: ("Spell", "Necrotic", "Utility"),
    cost: (actions(1),),
    effect: [Soil a surface with blood, filth or other disgusting things.

    With 1 minute of casting, shape or move a body-sized patch of earth.],
)

#let gravecraft = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
