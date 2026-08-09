#import "../../../global.typ": *

#let ability_data = (
    name: "Empowered Companion",
    type: (
        "Ability",
        "Shepherd",
        "Sacred Grace",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever you cast Lifebinding Spirit, treat it as if you spent 1 additional mana, ignoring the typical spell tier restrictions.]),
      (kind: "passive", effect: [Your Spirit Companion's maximum die size is now a d20.]),
    ),
)

#let empowered_companion = creat_ability(ability_data)
