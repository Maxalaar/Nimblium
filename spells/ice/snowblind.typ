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
    effect: [If this spell hits, the target is #kw_blind until the end of its next turn.],
    high_Levels: [This spell's damage increases by 3 at levels 5, 10, 15 and 20.],
    reminder: (conditions.blind,)
)

#let snowblind = creat_spell(spell_data)