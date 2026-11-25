#import "/global.typ": *

#let spell_data = (
    name: "Ice Lance",
    type: (
        "Spell",
        "Ice",
        "Cantrip",
    ),
    cost: (
        actions(1),
    ),
    range: "12",
    damage: "1d6",
    effect: [If this spell hits, the target is #kw_slowed.],
    high_Levels: [This spell's damage increases by 3 at levels 5, 10, 15 and 20.],
    reminder: (conditions.slowed,)
)

#let ice_lance = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
