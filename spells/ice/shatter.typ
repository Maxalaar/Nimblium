#import "../../global.typ": *

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
    effect: [If any die rolls the max against a #kw_hampered target, this counts as a crit. On crit: +20 damage.],
    upcast: [Increase the result of ANY die by 1. +5 damage on crit.],
    reminder: (conditions.hampered,),
)

#let shatter = creat_spell(spell_data)