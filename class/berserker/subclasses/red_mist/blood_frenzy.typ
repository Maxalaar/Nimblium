#import "../../../../global.typ": *

#let ability_data = (
    name: "Blood Frenzy",
    type: (
        "Ability",
        "Berserker",
        "Red Mist",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: per_turn(1),
        effect: [While you are #kw_raging, whenever you crit or kill an enemy, gain 1 Fury Die or change 1 of your Fury Dice to its maximum.],
      ),
    ),
    reminder: (berserker_keywords.raging,),
)

#let blood_frenzy = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
