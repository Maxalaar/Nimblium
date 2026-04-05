#import "../../global.typ": *

#let spell_data = (
    name: "Shatter",
    type: (
        "Spell",
        "Ice",
        "Tier 2",
    ),
    cost: (
        "2 Action",
        "2 Mana",
    ),
    damage: "3d6",
    reaction: " If any die rolls the max against a Hampered target, this counts as a crit. On crit: +20 damage",
    upcast: "Increase the result of ANY die by 1. +5 damage on crit.",
    reminder: (conditions.hampered,),
)

#let shatter = creat_spell(spell_data)