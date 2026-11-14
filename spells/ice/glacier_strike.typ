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
    area: [#times(3, 3)],
    damage: [#kw_d66],
    effect: [Each creature in the area takes this spell's damage. Each creature adjacent to the area takes half. The area permanently becomes #kw_difficult_terrain.],
    reminder: (keywords.difficult_terrain,),
    upcast: [+1 area.],
)

#let glacier_strike = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
