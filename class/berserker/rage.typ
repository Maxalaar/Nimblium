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
          Roll 1 Fury Die. You become #kw_raging.\
          \
          *Level 5:* Roll 2 Fury Dice instead.
        ],
      ),
    ),
    reminder: (berserker_keywords.raging,),
)

#let rage = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
