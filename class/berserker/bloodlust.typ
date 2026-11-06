#import "../../global.typ": *

#let ability_data = (
    name: "Bloodlust",
    type: (
        "Ability",
        "Berserker",
    ),
    blocks: (
      (kind: "active", cost: (fury_dice_cost("X"),), effect: [On your turn, move up to #DEX spaces per die spent.]),
    ),
)

#let bloodlust = creat_ability(ability_data)
