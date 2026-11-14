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
    effect: [This spell's damage ignores metal armor. Each creature that survives makes a #STR save. If it fails, it is #kw_dazed. If it fails by 5 or more, it is #kw_incapacitated until the end of its next turn instead. A creature wearing metal armor or holding a large metal weapon has disadvantage on this save.],
    upcast: [+4 damage.],
    reminder: (conditions.dazed, conditions.incapacitated),
)

#let stormlash = creat_spell(spell_data)
