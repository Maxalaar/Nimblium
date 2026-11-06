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
        cost: (actions(1),),
        limitation: per_turn(1),
        effect: [
          Roll a Fury Die and you become #kw_raging.\
          *Level 5:* Roll 2 Fury Dice instead.\
        ],
      ),
    ),
    reminder: (berserker_keywords.raging,),
)

#let rage = creat_ability(ability_data)
