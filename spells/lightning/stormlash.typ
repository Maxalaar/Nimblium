#import "../../global.typ": *

#let spell_data = (
    name: "Stormlash",
    type: (
        "Spell",
        "Lightning",
        "Tier 3",
        "AoE",
    ),
    cost: (
        actions(2),
        mana(3),
    ),
    reach: "Line 12",
    damage: "3d8+4",
    effect: [Each creature that survives makes a #STR save. If it fails, it falls #kw_prone.\
    A creature wearing metal armor or holding a large metal weapon takes +10 damage and has disadvantage on this save.],
    upcast: [+4 damage.],
    reminder: (conditions.prone,),
)

#let stormlash = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
