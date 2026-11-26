#import "/global.typ": *

#let spell_data = (
    name: "Zap",
    type: (
        "Spell",
        "Lightning",
        "Cantrip",
    ),
    cost: (
        actions(1),
    ),
    range: "8",
    damage: "1d8+4",
    effect: [If this spell misses, you take half its damage instead.],
    high_Levels: [
      *Level 5:* 1d8+10 damage.\
      *Level 10:* 1d8+16 damage.\
      *Level 15:* 1d8+22 damage.\
      *Level 20:* 1d8+28 damage.
    ],
    reminder: (conditions.charged,),
)

#let zap = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
