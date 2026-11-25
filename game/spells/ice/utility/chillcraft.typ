#import "/global.typ": *

#let spell_data = (
    name: "Chillcraft",
    type: ("Spell", "Ice", "Utility"),
    cost: (actions(1),),
    effect: [Harmlessly freeze, thaw or move a bath-sized amount of water near you.

    Conjure a sheet of opaque, mirror-like or transparent ice the size of a window or a small door.],
)

#let chillcraft = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
