#import "/global.typ": *

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
    high_Levels: [
      *Level 5:* 1d6+3 damage.\
      *Level 10:* 1d6+6 damage.\
      *Level 15:* 1d6+9 damage.\
      *Level 20:* 1d6+12 damage.
    ],
    reminder: (conditions.blind,)
)

#let snowblind = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
