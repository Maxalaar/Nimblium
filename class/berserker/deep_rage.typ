#import "../../global.typ": *

#let ability_data = (
    name: "Deep Rage",
    type: (
        "Ability",
        "Berserker",
    ),
    blocks: (
      (kind: "passive", effect: [Dropping to 0 HP does not cause your Rage to end.]),
    ),
    reminder: (berserker_keywords.raging,),
)

#let deep_rage = creat_ability(ability_data)
