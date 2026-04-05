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
        "2 Action",
        "5 Mana",
    ),
    reach: "Cone 4",
    damage: "4d6+10",
    effect: "This area is difficult terrain until the end of your next turn. Surviving creatures must make a STR save or be frozen in place (Restrained) until the end of their next turn; creatures already Hampered are Incapacitated for 1 turn instead.",
    reminder: (keywords.difficult_terrain,),
    upcast: "+1 Reach.",
)

#let arctic_blast = creat_spell(spell_data)