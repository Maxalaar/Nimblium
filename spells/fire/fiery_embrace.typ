#import "../../card_structure/creat_spell.typ": creat_spell

#let spell_data = (
    name: "Fiery Embrace",
    type: (
        "Spell",
        "Tier 5",
        "Fire",
    ),
    cost: (
        "1 Action",
        "5 Mana",
        "AoE",
    ),
    concentration: "Up to 1 minute.",
    reach: "8",
    reaction: "While within Reach: 1 ally gains the effects of Enchant Weapon. Enemies gain Smoldering, lose damage resistance, and their damage immunity is reduced to resistance.",
    upcast: "+1 ally.",
)

#let fiery_embrace = creat_spell(spell_data)