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
        actions(2),
        mana(5),
    ),
    concentration: "1 min",
    reach: "8",
    effect: [Choose 1 ally. While it is within Reach, it gains the effects of Enchant Weapon.\
    While an enemy is within Reach, it is #kw_smoldering. It loses its damage resistances, and its damage immunities become resistances.],
    upcast: [+1 ally and +2 Reach.],
    reminder: (conditions.smoldering,)
)

#let fiery_embrace = creat_spell(spell_data)