#import "../../../global.typ": *

#let ability_data = (
    name: "Death Blow",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (kind: "passive", effect: [After you deal damage from a critical hit, you may expend any number of Fury Dice. Add their total to the base damage, then deal double that amount of damage.]),
    ),
)

#let death_blow = creat_ability(ability_data)
