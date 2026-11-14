#import "../../global.typ": *

#let spell_data = (
    name: "Blustery Gale",
    type: (
        "Spell",
        "Wind",
        "Tier 1",
    ),
    cost: (
        actions(2),
        mana(1),
    ),
    range: "12",
    damage: "3d4",
    effect: [This spell has #kw_advantage against flying, Small and Tiny targets. Whether it hits or misses, the target suffers #kw_knockback 2. If an obstacle stops it, it takes 5 damage per space instead of 1d6.],
    upcast: [+1 #kw_knockback.],
    reminder: (keywords.advantage, keywords.knockback),
)

#let blustery_gale = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
