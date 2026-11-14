// review: style=2026-11-14 changelog=2026-10-02
#import "../../global.typ": *

#let ability_data = (
    name: "Deep Rage",
    type: (
        "Ability",
        "Berserker",
    ),
    blocks: (
      (kind: "passive", effect: [When you drop to 0 #HP, you remain #kw_raging.]),
    ),
    reminder: (berserker_keywords.raging,),
)

#let deep_rage = creat_ability(ability_data)
