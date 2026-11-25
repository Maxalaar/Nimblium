#import "/global.typ": *

#let spell_data = (
    name: "Razor Wind",
    type: (
        "Spell",
        "Wind",
        "Cantrip",
    ),
    cost: (
        actions(1),
    ),
    range: "12",
    damage: "2d4",
    effect: [Choose whether this spell has #kw_advantage or also deals its damage to 1 creature adjacent to the target.],
    high_Levels: [This spell's damage increases by 3 at levels 5, 10, 15 and 20.],
    reminder: (keywords.advantage,),
)

#let razor_wind = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
