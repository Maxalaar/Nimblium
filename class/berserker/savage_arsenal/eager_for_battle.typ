#import "../../../global.typ": *

#let ability_data = (
    name: "Eager for Battle",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (kind: "passive", effect: [Gain advantage on Initiative.]),
      (kind: "passive", effect: [On the start a you first turn on each encounter you can move 2×DEX spaces for free.]),
    ),
)

#let eager_for_battle = creat_ability(ability_data)
