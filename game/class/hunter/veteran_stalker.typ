#import "/global.typ": *

#let ability_data = (
    name: "Veteran Stalker",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [Gain 1 #TotH charge the first time you become #kw_bloodied in an encounter, and each time you gain a Wound.],
      ),
    ),
    reminder: (conditions.bloodied,),
)

#let veteran_stalker = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
