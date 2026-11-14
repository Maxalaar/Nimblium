#import "../../../global.typ": *

#let ability_data = (
    name: "Empowered Companion",
    type: (
        "Ability",
        "Shepherd",
        "Sacred Grace",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever you cast Lifebinding Spirit, treat it as cast 1 tier higher, ignoring the typical spell tier restrictions.]),
      (kind: "passive", effect: [Your Spirit Companion's Die becomes a 1d20 at tier 5 or higher.]),
    ),
)

#let empowered_companion = creat_ability(ability_data)

/*
house-rule: The book raises the maximum die size to a d20. Here the die becomes a d20 at
tier 5 or higher, to fit the tier-based die of the house-rule Spirit Companion.
*/
