#import "../../global.typ": *

#let ability_data = (
    name: "Bloodlust",
    type: (
        "Ability",
        "Berserker",
    ),
    effect:[
      Expend 1 or more Fury Dice on your turn, move DEX spaces per die spent for free.
    ],
)

#let bloodlust = creat_ability(ability_data)
