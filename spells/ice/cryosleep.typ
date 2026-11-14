#import "../../global.typ": *

#let spell_data = (
    name: "Cryosleep",
    type: (
        "Spell",
        "Ice",
        "Tier 3",
        "AoE",
    ),
    cost: (
        actions(2),
        mana(3),
    ),
    reach: "12",
    area: [#times(2, 2)],
    effect: [Each creature in the area is #kw_dazed. It makes a #WIL save. If it fails, it is #kw_asleep instead.],
    reminder: (conditions.dazed, conditions.asleep),
    upcast: [+1 area, +1 turn asleep.],
)

#let cryosleep = creat_spell(spell_data)