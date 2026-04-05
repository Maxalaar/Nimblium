#import "../../global.typ": *

#let spell_data = (
    name: "Arctic Annihilation",
    type: (
        "Spell",
        "Ice",
        "Tier 9",
        "AoE",
    ),
    cost: (
        "3 Action",
        "9 Mana",
    ),
    reach: "12",
    effect: "Choose any number of objects or willing creatures within Reach to encase in ice. They are Incapacitated and immune to damage and negative effects until the start of their next turn. All other creatures and objects within Reach take d66 damage. Any surviving creature who took this damage must make a STR save or be Incapacitated for 1 round. Once you cast this spell, you must Safe Rest for 1 week before using it again.",
    reminder: (conditions.incapacitated, keywords.d66),
)

#let arctic_annihilation = creat_spell(spell_data)