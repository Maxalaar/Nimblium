#import "/global.typ": *

#let spell_data = (
    name: "Ice Lance",
    type: (
        "Spell",
        "Ice",
        "Cantrip",
    ),
    cost: (
        actions(1),
    ),
    range: "12",
    damage: "1d6",
    effect: [If this spell hits, the target is #kw_slowed.],
    high_Levels: [
      *Level 5:* 1d6+3 damage.\
      *Level 10:* 1d6+6 damage.\
      *Level 15:* 1d6+9 damage.\
      *Level 20:* 1d6+12 damage.
    ],
    reminder: (conditions.slowed,)
)

#let ice_lance = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
