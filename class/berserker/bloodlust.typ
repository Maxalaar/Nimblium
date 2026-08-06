#import "../../global.typ": *

#let ability_data = (
    name: "Bloodlust",
    type: (
        "Ability",
        "Berserker",
    ),
    blocks: (
      (kind: "active", cost: ("X Fury Dice",), effect: [On your turn, move up X DEX spaces per die spent.]),
    ),
)

#let bloodlust = creat_ability(ability_data)
