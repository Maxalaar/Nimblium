#import "../../../../global.typ": *

#let ability_data = (
    name: "Impressive Form",
    type: (
        "Ability",
        "Hunter",
        "Wild Heart",
    ),
    blocks: (
      (kind: "passive", effect: [+5 max HP.]),
      (kind: "passive", effect: [Upgrade your Hit Dice to d10s.]),
    ),
)

#let impressive_form = creat_ability(ability_data)
