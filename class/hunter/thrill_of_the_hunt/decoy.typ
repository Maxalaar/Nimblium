#import "../../../global.typ": *

#let ability_data = (
    name: "Decoy",
    type: (
        "Ability",
        "Hunter",
        "Thrill of the hunt"
    ),
    cost: (
        "1 Action",
        "1 TotH charge",
    ),
    effect:[
      When you Defend: The attack misses instead, and you can move up to half your speed away (where you really were all along!).
    ],
)

#let decoy = creat_ability(ability_data)