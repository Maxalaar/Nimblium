#import "../../global.typ": *

#let spell_data = (
    name: "Flame Dart",
    type: (
        "Spell",
        "Fire",
        "Cantrip",
    ),
    cost: (
        "1 Action",
    ),
    range: "8",
    damage: "1d10",
    effect: "On crit: Smoldering.",
    high_Levels: "+5 damage every 5 levels.",
    reminder: (conditions.smoldering,)
)

#let flame_dart = creat_spell(spell_data)