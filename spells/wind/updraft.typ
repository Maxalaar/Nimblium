#import "../../global.typ": *

#let spell_data = (
    name: "Updraft",
    type: (
        "Spell",
        "Wind",
        "Tier 5",
        "AoE",
    ),
    cost: (
        actions(2),
        mana(5),
    ),
    reach: "12",
    area: [#times(5, 5)],
    damage: "20",
    effect: [Each enemy in the area makes a #DEX save. It takes this spell's damage minus its save result. If it takes 10 or more damage, it is #kw_prone and #kw_dazed.],
    upcast: [It deals 2 more damage.],
    reminder: (conditions.prone, conditions.dazed),
)

#let updraft = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
