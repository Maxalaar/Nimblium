#import "/global.typ": *

#let spell_data = (
    name: "Beautify",
    type: ("Spell", "Radiant", "Utility"),
    cost: (actions(1),),
    effect: [Clean stains from a non-magical item or mend a small tear or break in it.

    Conjure tiny beautiful things, such as flowers or butterflies.],
)

#let beautify = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
