#import "/global.typ": *

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
    effect: [A creature within Reach becomes #kw_charged. It has 1 more action each turn, +5 #defense, double #speed and #kw_advantage on #DEX checks.],
    upcast: [Its Reach increases by 4.],
    reminder: (keywords.concentration, conditions.charged,),
)

#let electrocharge = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: "+1 maximum action" becomes "1 more action each turn", since there is no maximum of
3 actions (user ruling 2026-11-28, Combat page, Actions).
*/
