#import "/global.typ": *

#let ability_data = (
    name: "Supreme Execution",
    type: (
        "Ability",
        "Cheat",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [When you attack with a blade, you can use #card_ref("Vicious Opportunist") even if the target isn't #kw_distracted.],
      ),
    ),
    reminder: (keywords.distracted,),
)

#let supreme_execution = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
