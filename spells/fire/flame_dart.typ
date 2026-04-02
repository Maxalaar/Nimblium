#import "../../card_structure/creat_spell.typ": creat_spell

#let flame_dart = (
    name: "Flame Dart",
    type: (
        "Spell",
        "Cantrip",
    ),
    cost: (
        "1 Action",
    ),
    range: "8",
    damage: "1d10",
    effect: "On crit: Smoldering.",
    high_Levels: "+5 damage every 5 levels.",
    reminder: ("Smoldering: This condition does nothing on its own, though some spells and abilities have additional effects against Smoldering creatures.",)
)

#let creat_flame_dart = creat_spell(flame_dart)