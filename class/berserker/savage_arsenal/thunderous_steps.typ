#import "../../../global.typ": *

#let ability_data = (
    name: "Thunderous Steps",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [Whenever you stop after moving at least 4 spaces while #kw_raging, you may deal #STR bludgeoning damage to each creature adjacent to you.],
      ),
    ),
    reminder: (berserker_keywords.raging,),
)

#let thunderous_steps = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
