#import "../../global.typ": *

#let spell_data = (
    name: "Cryosleep",
    type: (
        "Spell",
        "Ice",
        "Tier 3",
        "AoE",
    ),
    cost: (
        "1 Action",
        "3 Mana",
    ),
    reach: "12",
    area: "2×2",
    effect: " Creatures in the area are Dazed. On a failed STR save, they fall asleep instead.",
    reminder: (conditions.dazed, conditions.asleep),
    upcast: "+1 area, +1 turn asleep.",
)

#let cryosleep = creat_spell(spell_data)