// review: style=2026-11-14 changelog=2026-10-02
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
        effect: [Leap up to #times(2, DEX) spaces toward an enemy. If you land within your weapon's Reach of at least 2 enemies, attack one of them for free.],
      ),
    ),
)

#let into_the_fray = creat_ability(ability_data)
