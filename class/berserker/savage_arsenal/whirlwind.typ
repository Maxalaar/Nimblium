#import "../../../global.typ": *

#let ability_data = (
    name: "Whirlwind",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (
        kind: "active",
        cost: ("2 Actions",),
        effect: [Attack ALL targets within your melee weapon’s reach.],
      ),
    ),
)

#let whirlwind = creat_ability(ability_data)
