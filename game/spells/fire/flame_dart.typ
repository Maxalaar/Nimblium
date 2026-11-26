#import "/global.typ": *

#let spell_data = (
    name: "Flame Dart",
    type: (
        "Spell",
        "Fire",
        "Cantrip",
    ),
    cost: (
        actions(1),
    ),
    range: "10",
    damage: "—",
    effect: [If this spell crits, the target becomes #kw_smoldering.],
    levels: [
      *Level 1:* 1d10 damage.\
      *Level 5:* 1d10+5 damage.\
      *Level 10:* 1d10+10 damage.\
      *Level 15:* 1d10+15 damage.\
      *Level 20:* 1d10+20 damage.
    ],
    reminder: (conditions.smoldering,)
)

#let flame_dart = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
