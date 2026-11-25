#import "/global.typ": *

#let spell_data = (
    name: "Fiery Embrace",
    type: (
        "Spell",
        "Fire",
        "Tier 5",
        "AoE",
    ),
    cost: (
        actions(2),
        mana(5),
    ),
    concentration: "1 min",
    reach: "10",
    effect: [Choose 1 ally. While it is within Reach, it gains the effects of #card_ref("Enchant Weapon").

    While an enemy is within Reach, it is #kw_smoldering. Effects that rely on Smoldering don't end it.],
    upcast: [Choose 1 more ally. Its Reach increases by 2.],
    reminder: (conditions.smoldering,)
)

#let fiery_embrace = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
