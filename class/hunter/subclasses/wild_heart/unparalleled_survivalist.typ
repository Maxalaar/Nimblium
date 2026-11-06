#import "../../../../global.typ": *

#let ability_data = (
    name: "Unparalleled Survivalist",
    type: (
        "Ability",
        "Hunter",
        "Wild Heart",
    ),
    blocks: (
      (kind: "passive", limitation: per_turn(1), effect: [When you attack with a ranged weapon, you may first move half your #speed.]),
      (kind: "passive", effect: [Gain #WIL #defense.]),
    ),
)

#let unparalleled_survivalist = creat_ability(ability_data)
