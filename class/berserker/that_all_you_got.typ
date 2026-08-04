#import "../../global.typ": *

#let ability_data = (
    name: "That all you got?!",
    type: (
        "Ability",
        "Berserker",
    ),
    effect:[
      When you are attacked, you may expend 1 or more Fury Dice to reduce the damage taken by STR+DEX for each die spent.
    ],
)

#let that_all_you_got = creat_ability(ability_data)
