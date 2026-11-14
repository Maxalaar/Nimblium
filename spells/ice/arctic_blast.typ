#import "../../global.typ": *

#let spell_data = (
    name: "Arctic Blast",
    type: (
        "Spell",
        "Ice",
        "Tier 5",
        "AoE",
    ),
    cost: (
        actions(2),
        mana(5),
    ),
    reach: "Cone 4",
    damage: "4d6+10",
    effect: [Each surviving creature that is #kw_hampered is #kw_restrained until the end of its next turn. Then the area becomes #kw_difficult_terrain until the end of your next turn.],
    reminder: (keywords.difficult_terrain, conditions.hampered, conditions.restrained),
    upcast: [+1 Reach.],
)

#let arctic_blast = creat_spell(spell_data)