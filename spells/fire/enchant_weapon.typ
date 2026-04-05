#import "../../global.typ": *

#let spell_data = (
    name: "Enchant Weapon",
    type: (
        "Spell",
        "Fire",
        "Tier 2",
    ),
    cost: (
        "1 Action",
        "2 Mana",
    ),
    concentration: "Up to 1 minute.",
    effect:"A weapon you touch is enchanted with magical flame. It deals +KEY damage and inflicts Smoldering on crit.",
    upcast: "+KEY damage.",
    reminder: (conditions.smoldering,)
)

#let enchant_weapon = creat_spell(spell_data)