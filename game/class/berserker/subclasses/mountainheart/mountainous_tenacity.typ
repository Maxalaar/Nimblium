#import "/global.typ": *

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
        effect: [Whenever you regain #HP, you may recover 1 Wound instead of each 10 #HP you would regain.],
      ),
    ),
)

#let mountainous_tenacity = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Any healing counts (book: when you spend Hit Dice); there are no Hit Dice.
*/
