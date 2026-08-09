#import "../../../global.typ": *

#let ability_data = (
    name: "Hasty Companion",
    type: (
        "Ability",
        "Shepherd",
        "Sacred Grace",
    ),
    blocks: (
      (kind: "passive", effect: [+4 SPD for your Spirit Companion.]),
    ),
)

#let hasty_companion = creat_ability(ability_data)
