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
    damage: [#kw_d66],
    effect: [Choose any number of creatures and objects within Reach. Until the start of their next turn, they are immune to damage and negative effects.\
    Each other creature and object within Reach takes this spell's damage. Each creature that survives makes a #STR save. If it fails, it is #kw_incapacitated until the end of its next turn.\
    After you cast this spell, you must #safe_rest for 1 week before you can cast it again.],
    reminder: (conditions.incapacitated,),
)

#let arctic_annihilation = creat_spell(spell_data)