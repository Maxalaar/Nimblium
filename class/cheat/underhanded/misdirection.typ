#import "../../../global.typ": *

#let ability_data = (
    name: "Misdirection",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (kind: "passive", effect: [Gain INT in DEF.]),
      (kind: "passive", effect: [Whenever you Defend, you may halve the damage instead.]),
    ),
)

#let misdirection = creat_ability(ability_data)
