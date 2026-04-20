#import "../../global.typ": *

#let ability_data = (
    name: "Roll & Strike",
    type: (
        "Ability",
        "Hunter",
    ),
    cost: (
        "1 Action",
    ),
    effect:[
      f you have no Thrill of the Hunt charges, move up to your speed toward your quarry. If you end adjacent to them, make a melee attack against them for free.
    ],
)

#let roll_strike = creat_ability(ability_data)