#import "../../global.typ": *

// Abilities granted by the Dragonform spell, kept on their own card (like
// Lifebinding Spirit and Spirit Companion).
#let ability_data = (
    name: "Dragon Form",
    type: (
        "Ability",
        "Fire",
        "Dragonform",
    ),
    blocks: (
        (
            kind: "active",
            cost: (actions(1),),
            effect: [*Tooth & Claw:* A creature within 2 spaces takes 1d20+#LVL damage, ignoring armor. It becomes #kw_smoldering.],
        ),
        (
            kind: "active",
            cost: (actions(2),),
            effect: [*Immolating Breath:* Each creature in a Cone 10 makes a #DEX save. If it fails, it takes #times(KEY, "d20") damage. If it succeeds, it takes half. A #kw_smoldering creature automatically fails.],
        ),
    ),
    reminder: (conditions.smoldering,),
)

#let dragon_form = creat_ability(ability_data)
