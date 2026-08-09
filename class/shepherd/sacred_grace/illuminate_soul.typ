#import "../../../global.typ": *

#let ability_data = (
    name: "Illuminate Soul",
    type: (
        "Ability",
        "Shepherd",
        "Sacred Grace",
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action",),
        limitation: "WIL/safe rest",
        effect: [Target a creature within 6 spaces. For 1 round, attacks against them are made with your choice of advantage or disadvantage.],
      ),
    ),
)

#let illuminate_soul = creat_ability(ability_data)
