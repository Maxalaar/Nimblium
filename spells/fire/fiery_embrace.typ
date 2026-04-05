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
        "1 Action",
        "5 Mana",
    ),
    concentration: "Up to 1 minute.",
    reach: "8",
    reaction: "While within Reach: 1 ally gains the effects of Enchant Weapon. Enemies gain Smoldering, lose damage resistance, and their damage immunity is reduced to resistance.",
    upcast: "+1 ally.",
    reminder: (conditions.smoldering,)
)

#let fiery_embrace = creat_spell(spell_data)