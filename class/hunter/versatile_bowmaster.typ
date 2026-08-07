#import "../../global.typ": *

#let ability_data = (
    name: "Versatile Bowmaster",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever you attack with a Longbow, you may roll 2d4 instead of 1d8; or with a Crossbow, 2d8 instead of 4d4.]),
    ),
)

#let versatile_bowmaster = creat_ability(ability_data)
