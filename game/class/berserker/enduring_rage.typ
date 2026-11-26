#import "/global.typ": *

#let ability_data = (
    name: "Enduring Rage",
    type: (
        "Ability",
        "Berserker",
    ),
    blocks: (
      (kind: "passive", effect: [At the start of your turn, if you are #kw_dying, you become #kw_raging.]),
      (
        kind: "passive",
        effect: [While you are #kw_dying, you can have up to 2 actions per turn, and your attacks don't require a #STR check.],
      ),
    ),
    reminder: (conditions.dying, berserker_keywords.raging,),
)

#let enduring_rage = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
