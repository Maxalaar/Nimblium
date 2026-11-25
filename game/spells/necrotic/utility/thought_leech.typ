#import "/global.typ": *

#let spell_data = (
    name: "Thought Leech",
    type: ("Spell", "Necrotic", "Utility"),
    cost: (actions(1),),
    reach: "6",
    effect: [Read the surface thoughts of a creature within Reach. It can sense you doing this and may not like it.],
)

#let thought_leech = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
