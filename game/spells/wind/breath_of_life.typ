#import "/global.typ": *

#let spell_data = (
    name: "Breath of Life",
    type: (
        "Spell",
        "Wind",
        "Cantrip",
    ),
    cost: (
        actions(1),
    ),
    range: "—",
    effect: [A #kw_dying creature within Range regains the #HP shown in Levels. If it regains 4 or more, it also gains 1 action.],
    levels: [
      *Level 1:* Range 6, and it regains 1d4 #HP.\
      *Level 5:* Range 8, and it regains 1d4+2 #HP.\
      *Level 10:* Range 10, and it regains 1d4+4 #HP.\
      *Level 15:* Range 12, and it regains 1d4+6 #HP.\
      *Level 20:* Range 14, and it regains 1d4+8 #HP.
    ],
    reminder: (conditions.dying,),
)

#let breath_of_life = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
