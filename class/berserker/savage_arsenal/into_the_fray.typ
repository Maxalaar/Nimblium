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
        cost: (actions(1),),
        effect: [Leap up to #times(2, DEX) spaces toward an enemy. If you land adjacent to at least 2 enemies, make an attack against one of them.],
      ),
    ),
)

#let into_the_fray = creat_ability(ability_data)
