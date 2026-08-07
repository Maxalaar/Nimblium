#import "../../global.typ": *

#let ability_data = (
    name: "Rage",
    type: (
        "Ability",
        "Berserker",
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action",),
        limitation: "1/turn",
        effect: [
          Roll a Fury Die and you become #keyword_style[Raging].\
          *Level 5:* Roll 2 Fury Dice instead.\
        ],
      ),
    ),
    reminder: (berserker_keywords.raging,),
)

#let rage = creat_ability(ability_data)
