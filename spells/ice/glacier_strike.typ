#import "../../global.typ": *

#let spell_data = (
    name: "Glacier Strike",
    type: (
        "Spell",
        "Ice",
        "Tier 8",
        "AoE",
    ),
    cost: (
        actions(3),
        mana(8),
    ),
    range: "12",
    area: "3x3",
    damage: [#kw_d66],
    effect: [Inflict damage in the area. Creatures adjacent to that area take half. The entire area becomes #kw_difficult_terrain.],
    reminder: (keywords.d66, keywords.difficult_terrain,),
    upcast: "+1 Reach.",
)

#let glacier_strike = creat_spell(spell_data)