#import "/global.typ": *

#let spell_data = (
    name: "Fire Step",
    type: ("Spell", "Fire", "Utility"),
    casting_time: "1 min",
    effect: [Teleport to a fire you can see.],
)

#let fire_step = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
