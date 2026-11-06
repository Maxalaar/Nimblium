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
      (kind: "passive", effect: [On your first turn each encounter, you can move 2 $times$ DEX spaces.]),
    ),
)

#let eager_for_battle = creat_ability(ability_data)
