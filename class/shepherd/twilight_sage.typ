#import "../../global.typ": *

#let ability_data = (
    name: "Twilight Sage",
    type: (
        "Ability",
        "Shepherd",
    ),
    blocks: (
      (kind: "passive", effect: [Your Spirit Companion rolls its Die twice and adds both results.]),
    ),
)

#let twilight_sage = creat_ability(ability_data)
