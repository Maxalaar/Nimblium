#import "../../../../global.typ": *

#let ability_data = (
    name: "Mountainous Tenacity",
    type: (
        "Ability",
        "Berserker",
        "Mountainheart",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [Whenever you spend Hit Dice to recover #HP, you may recover 1 Wound instead of each 10 #HP you would recover.],
      ),
    ),
)

#let mountainous_tenacity = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
