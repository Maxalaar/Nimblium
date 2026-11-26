#import "/global.typ": *

#let spell_data = (
    name: "Overload",
    type: (
        "Spell",
        "Lightning",
        "Cantrip",
        "AoE",
    ),
    cost: (
        actions(1),
    ),
    reach: "2",
    damage: "—",
    effect: [Cast this spell only while you are #kw_charged. It deals its damage to each other creature within Reach.],
    levels: [
      *Level 1:* 2d8 damage.\
      *Level 5:* 2d8+4 damage.\
      *Level 10:* 2d8+8 damage.\
      *Level 15:* 2d8+12 damage.\
      *Level 20:* 2d8+16 damage.
    ],
    reminder: (conditions.charged,),
)

#let overload = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
