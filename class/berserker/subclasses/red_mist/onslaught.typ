#import "../../../../global.typ": *

#let ability_data = (
    name: "Onslaught",
    type: (
        "Ability",
        "Berserker",
        "Red Mist",
    ),
    blocks: (
      (
        kind: "active",
        limitation: per_round(1),
        effect: [Move for free.],
      ),
      (kind: "passive", effect: [While you are #kw_raging, your #speed increases by 2.]),
    ),
    reminder: (berserker_keywords.raging,),
)

#let onslaught = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
