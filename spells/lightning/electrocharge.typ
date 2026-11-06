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
    concentration: "Up to 1 minute.",
    reach: "4",
    effect: [A creature within Reach becomes #kw_charged and gains +1 max action, +5 #defense, double #speed, and advantage on #DEX saves.],
    upcast: [+4 Reach.],
    reminder: (conditions.charged,),
)

#let electrocharge = creat_spell(spell_data)
