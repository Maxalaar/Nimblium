#import "../../../../global.typ": *

#let ability_data = (
    name: "Unbreakable",
    type: (
        "Ability",
        "Berserker",
        "Mountainheart",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: per_encounter(1),
        effect: [While you are #kw_raging, when you would gain your last Wound or a negative condition, you may prevent it.],
      ),
    ),
    reminder: (berserker_keywords.raging,),
)

#let unbreakable = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
