#import "../../../../global.typ": *

#let ability_data = (
    name: "Mountainous Tenacity",
    type: (
        "Ability",
        "Berserker",
        "Mountainheart",
    ),
    effect:[
      Whenever you expend your Hit Dice to recover HP, for every 10 HP you would recover, you may heal 1 Wound instead.
    ],
)

#let mountainous_tenacity = creat_ability(ability_data)
