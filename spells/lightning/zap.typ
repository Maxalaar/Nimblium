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
    range: "12",
    damage: "2d8",
    effect: [If this spell misses, you take 2d8 damage instead.],
    high_Levels: [This spell's damage increases by 4 at levels 5, 10, 15 and 20.],
    reminder: (conditions.charged,),
)

#let zap = creat_spell(spell_data)
