#import "../../global.typ": *

#let spell_data = (
    name: "Zap",
    type: (
        "Spell",
        "Lightning",
        "Cantrip",
    ),
    cost: (
        actions(1),
    ),
    range: "8",
    damage: "1d8+4",
    effect: [If this spell misses, you take half its damage instead.],
    high_Levels: [This spell's damage increases by 6 at levels 5, 10, 15 and 20.],
    reminder: (conditions.charged,),
)

#let zap = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
