#import "/global.typ": *

#let spell_data = (
    name: "Razor Wind",
    type: (
        "Spell",
        "Wind",
        "Cantrip",
    ),
    cost: (
        actions(1),
    ),
    range: "12",
    damage: "2d4",
    effect: [Choose whether this spell has #kw_advantage or also deals its damage to 1 creature adjacent to the target.],
    high_Levels: [
      *Level 5:* 2d4+3 damage.\
      *Level 10:* 2d4+6 damage.\
      *Level 15:* 2d4+9 damage.\
      *Level 20:* 2d4+12 damage.
    ],
    reminder: (keywords.advantage,),
)

#let razor_wind = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
