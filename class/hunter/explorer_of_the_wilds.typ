#import "../../global.typ": *

#let ability_data = (
    name: "Explorer of the Wilds",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (kind: "passive", effect: [+2 speed.]),
      (kind: "passive", effect: [Gain a climbing speed.]),
    ),
)

#let explorer_of_the_wilds = creat_ability(ability_data)
