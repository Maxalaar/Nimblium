#import "../../../global.typ": *

#let ability_data = (
    name: "MORE BLOOD!",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever an enemy crits you, gain 1 Fury Die.]),
    ),
)

#let more_blood = creat_ability(ability_data)
