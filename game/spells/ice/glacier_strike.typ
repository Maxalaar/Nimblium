#import "/global.typ": *

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
    area: [#times(3, 3)],
    damage: [#kw_d66],
    effect: [Each creature in the area takes this spell's damage. Each creature adjacent to the area takes half. The area permanently becomes #kw_difficult_terrain.],
    reminder: (keywords.difficult_terrain,),
    upcast: [Each side of its area increases by 1.],
)

#let glacier_strike = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book's upcast is +1 initial area. Read as 1 more space on each side of
the area: 3×3 becomes 4×4.
*/
