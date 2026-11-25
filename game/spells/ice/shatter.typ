#import "/global.typ": *

#let spell_data = (
    name: "Shatter",
    type: (
        "Spell",
        "Ice",
        "Tier 2",
    ),
    cost: (
        actions(2),
        mana(2),
    ),
    damage: "3d6",
    range: "12",
    effect: [If any die shows its maximum against a #kw_hampered target, this spell crits. When this spell crits, it deals +20 damage.],
    upcast: [Add 1 to the result of a die of your choice, up to its maximum. A crit deals 5 more damage.],
    reminder: (conditions.hampered,),
)

#let shatter = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
