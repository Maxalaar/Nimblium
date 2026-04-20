#import "../../global.typ": *

#let ability_data = (
    name: "Forager",
    type: (
        "Ability",
        "Hunter",
    ),
    effect:[
      Gain advantage on skill checks to find food and water in the wild.
    ],
)

#let forager = creat_ability(ability_data)