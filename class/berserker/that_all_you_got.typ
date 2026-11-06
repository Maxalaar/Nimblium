#import "../../global.typ": *

#let ability_data = (
    name: "That all you got?!",
    type: (
        "Ability",
        "Berserker",
    ),
    blocks: (
      (kind: "passive", effect: [When you are attacked, you may expend X Fury Dice to reduce the damage taken by #times("X", [(#STR + #DEX)]).]),
    ),
)

#let that_all_you_got = creat_ability(ability_data)
