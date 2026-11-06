#import "../../../global.typ": *

#let ability_data = (
    name: "Hasty Companion",
    type: (
        "Ability",
        "Shepherd",
        "Sacred Grace",
    ),
    blocks: (
      (kind: "passive", effect: [+4 #speed for your Spirit Companion.]),
      (kind: "passive", effect: [Your Spirit Companion can act for free when summoned.]),
    ),
)

#let hasty_companion = creat_ability(ability_data)
