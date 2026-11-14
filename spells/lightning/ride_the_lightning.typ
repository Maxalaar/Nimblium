#import "../../global.typ": *

#let spell_data = (
    name: "Ride the Lightning",
    type: (
        "Spell",
        "Lightning",
        "Tier 6",
        "AoE",
    ),
    cost: (
        actions(3),
        mana(6),
    ),
    range: "12",
    damage: [#kw_d88],
    effect: [Teleport to a space you can see within Range. If a willing creature is there, swap places with it. Each creature adjacent to you takes this spell's damage. Each survivor suffers #kw_knockback 3 and becomes #kw_prone and #kw_dazed.],
    upcast: [Its #kw_knockback increases by 1.],
    reminder: (keywords.knockback, conditions.prone, conditions.dazed),
)

#let ride_the_lightning = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
