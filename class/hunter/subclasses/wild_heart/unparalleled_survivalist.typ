#import "../../../../global.typ": *

#let ability_data = (
    name: "Unparalleled Survivalist",
    type: (
        "Ability",
        "Hunter",
        "Wild Heart",
    ),
    blocks: (
      (kind: "passive", limitation: "1/turn", effect: [When you attack with a ranged weapon, you may first move half your speed.]),
      (kind: "passive", effect: [Gain +WIL in DEF.]),
    ),
)

#let unparalleled_survivalist = creat_ability(ability_data)
