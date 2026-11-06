#import "../../../../global.typ": *

#let ability_data = (
    name: "Onslaught",
    type: (
        "Ability",
        "Berserker",
        "Red Mist",
    ),
    blocks: (
      (kind: "active", limitation: per_round(1), effect: [You may Move for free.]),
      (kind: "passive", effect: [While #kw_raging, gain +2 #speed.]),
    ),
    reminder: (berserker_keywords.raging,),
)

#let onslaught = creat_ability(ability_data)
