#import "../../global.typ": *

#let ability_data = (
    name: "Bloodlust",
    type: (
        "Ability",
        "Berserker",
    ),
    blocks: (
      (kind: "active", effect: [Expend 1 or more Fury Dice on your turn, move DEX spaces per die spent.]),
    ),
)

#let bloodlust = creat_ability(ability_data)
