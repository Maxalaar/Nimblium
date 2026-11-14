#import "../../global.typ": *

#let spell_data = (
    name: "Flame Dart",
    type: (
        "Spell",
        "Fire",
        "Cantrip",
    ),
    cost: (
        actions(1),
    ),
    range: "10",
    damage: "1d10",
    effect: [If this spell crits, the target becomes #kw_smoldering.],
    high_Levels: [This spell's damage increases by 5 at levels 5, 10, 15 and 20.],
    reminder: (conditions.smoldering,)
)

#let flame_dart = creat_spell(spell_data)