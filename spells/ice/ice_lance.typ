#import "../../global.typ": *

#let spell_data = (
    name: "Ice Lance",
    type: (
        "Spell",
        "Ice",
        "Cantrip",
    ),
    cost: (
        "1 Action",
    ),
    range: "12",
    damage: "1d6",
    effect: "On hit: Slowed.",
    high_Levels: "+3 damage every 5 levels.",
    reminder: (conditions.slowed,)
)

#let ice_lance = creat_spell(spell_data)