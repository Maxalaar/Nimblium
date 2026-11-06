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
        actions(1),
        mana(3),
    ),
    reach: "12",
    area: [#times(2, 2)],
    effect: [ Creatures in the area are #kw_dazed. On a failed #WIL save, they fall #kw_asleep instead.],
    reminder: (conditions.dazed, conditions.asleep),
    upcast: "+1 area, +1 turn asleep.",
)

#let cryosleep = creat_spell(spell_data)