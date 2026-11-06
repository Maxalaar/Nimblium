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
        actions(3),
        mana(9),
    ),
    reach: "12",
    effect: [Choose any number of targets within Reach to encase in ice. They are immune to damage and negative effects until the start of their next turn. All other creatures and objects within Reach take #kw_d66 damage. Any surviving creature who took this damage must make a #STR save or be #kw_incapacitated for 1 round. Once you cast this spell, you must #safe_rest for 1 week before using it again.],
    reminder: (conditions.incapacitated, keywords.d66),
)

#let arctic_annihilation = creat_spell(spell_data)