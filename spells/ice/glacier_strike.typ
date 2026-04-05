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
        "3 Action",
        "8 Mana",
    ),
    range: "12",
    area: "3x3",
    damage: "d66",
    effect: "Inflict damage in the area. Creatures adjacent to that area take half. The entire area becomes difficult terrain.",
    reminder: (keywords.d66, keywords.difficult_terrain,),
    upcast: "+1 Reach.",
)

#let glacier_strike = creat_spell(spell_data)