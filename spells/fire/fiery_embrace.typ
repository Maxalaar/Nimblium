#import "../../global.typ": *

#let spell_data = (
    name: "Fiery Embrace",
    type: (
        "Spell",
        "Fire",
        "Tier 5",
        "AoE",
    ),
    cost: (
        actions(1),
        mana(5),
    ),
    concentration: "Up to 1 minute.",
    reach: "8",
    effect: [While within Reach: 1 ally gains the effects of Enchant Weapon. Enemies gain #kw_smoldering, lose damage resistance, and their damage immunity is reduced to resistance.],
    upcast: [+1 ally and +2 Reach.],
    reminder: (conditions.smoldering,)
)

#let fiery_embrace = creat_spell(spell_data)