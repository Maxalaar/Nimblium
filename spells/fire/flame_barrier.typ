#import "../../card_structure/creat_spell.typ": creat_spell

#let spell_data = (
    name: "Flame Barrier",
    type: (
        "Spell",
        "Fire",
        "Tier 3",
    ),
    cost: (
        "1 Action",
        "3 Mana",
    ),
    reaction: "When attacked, Defend for free. Until the start of your next turn, melee attackers against you take KEY damage (ignoring armor) and gain Smoldering.",
    upcast: "+KEY damage.",
)

#let flame_barrier = creat_spell(spell_data)