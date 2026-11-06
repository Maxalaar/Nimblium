#import "../../global.typ": *

#let spell_data = (
    name: "Snowblind",
    type: (
        "Spell",
        "Ice",
        "Cantrip",
    ),
    cost: (
        actions(1),
    ),
    range: "1",
    damage: "1d6",
    effect: [On hit: #kw_blind until the end of their next turn.],
    high_Levels: [+3 damage every 5 levels.],
    reminder: (conditions.blind,)
)

#let snowblind = creat_spell(spell_data)