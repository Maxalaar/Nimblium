#import "../../../../global.typ": *

#let ability_data = (
    name: "Stone’s Resilience",
    type: (
        "Ability",
        "Berserker",
        "Mountainheart",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever you expend Fury Dice to reduce incoming damage, add the value of the die to the amount reduced.]),
    ),
)

#let stones_resilience = creat_ability(ability_data)
