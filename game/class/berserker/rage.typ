#import "/global.typ": *

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
        effect: [Roll the number of #card_ref("Fury Dice") shown in Levels. You become #kw_raging.],
      ),
    ),
    levels: [
      *Level 1:* Roll 1 Fury Die.\
      *Level 5:* Roll 2 #card_ref("Fury Dice").
    ],
    reminder: (berserker_keywords.raging,),
)

#let rage = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
