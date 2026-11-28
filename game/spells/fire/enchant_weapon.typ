#import "/global.typ": *

#let spell_data = (
    name: "Enchant Weapon",
    type: (
        "Spell",
        "Fire",
        "Tier 2",
    ),
    cost: (
        actions(1),
        mana(2),
    ),
    concentration: "1 min",
    reach: "8",
    effect: [Enchant the weapon of a creature within Reach. The first time each turn that weapon hits, it deals #KEY additional damage. When it crits, the target becomes #kw_smoldering.],
    upcast: [It deals #KEY more damage.],
    reminder: (keywords.concentration, conditions.smoldering,)
)

#let enchant_weapon = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
