#import "../../global.typ": *

#let spell_data = (
    name: "Electrocharge",
    type: (
        "Spell",
        "Lightning",
        "Tier 5",
    ),
    cost: (
        actions(2),
        mana(5),
    ),
    concentration: "1 min",
    reach: "4",
    effect: [A creature within Reach becomes #kw_charged. It gains +1 maximum action, +5 #defense, double #speed and advantage on #DEX saves.],
    upcast: [+4 Reach.],
    reminder: (conditions.charged,),
)

#let electrocharge = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
