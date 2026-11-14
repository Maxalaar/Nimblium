// review: style=2026-11-14 changelog=2026-10-02
#import "../../../../global.typ": *

#let ability_data = (
    name: "Stone's Resilience",
    type: (
        "Ability",
        "Berserker",
        "Mountainheart",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [Whenever you spend Fury Dice to reduce damage, the damage is also reduced by the total value of those dice.],
      ),
    ),
)

#let stones_resilience = creat_ability(ability_data)
