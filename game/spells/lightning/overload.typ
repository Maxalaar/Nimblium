#import "/global.typ": *

#let spell_data = (
    name: "Overload",
    type: (
        "Spell",
        "Lightning",
        "Cantrip",
        "AoE",
    ),
    cost: (
        actions(1),
    ),
    reach: "2",
    damage: "2d8",
    effect: [Cast this spell only while you are #kw_charged. It deals its damage to each other creature within Reach.],
    high_Levels: [This spell's damage increases by 4 at levels 5, 10, 15 and 20.],
    reminder: (conditions.charged,),
)

#let overload = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
