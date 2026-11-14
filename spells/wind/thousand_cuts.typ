#import "../../global.typ": *

#let spell_data = (
    name: "Thousand Cuts",
    type: (
        "Spell",
        "Wind",
        "Tier 6",
        "AoE",
    ),
    cost: (
        actions(3),
        mana(6),
    ),
    range: "12",
    reach: "1",
    damage: [#kw_d44],
    effect: [This spell has #kw_advantage. It also deals its damage to each enemy within Reach of the target.],
    upcast: [+1 Reach.],
    reminder: (keywords.d44, keywords.advantage),
)

#let thousand_cuts = creat_spell(spell_data)
