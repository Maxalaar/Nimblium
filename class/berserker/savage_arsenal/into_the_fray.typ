#import "../../../global.typ": *

#let ability_data = (
    name: "Into the Fray",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action",),
        effect: [Leap up to 2×DEX spaces toward an enemy. If you land adjacent to at least 2 enemies, make an attack against 1 of them for free.],
      ),
    ),
)

#let into_the_fray = creat_ability(ability_data)
