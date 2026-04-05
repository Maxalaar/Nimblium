#import "../../global.typ": *

#let spell_data = (
    name: "Snowblind",
    type: (
        "Spell",
        "Ice",
        "Cantrip",
    ),
    cost: (
        "1 Action",
    ),
    range: "1",
    damage: "1d6",
    effect: "On hit: Blinded until the end of their next turn.",
    high_Levels: "+3 damage every 5 levels.",
    reminder: (conditions.blinded,)
)

#let snowblind = creat_spell(spell_data)