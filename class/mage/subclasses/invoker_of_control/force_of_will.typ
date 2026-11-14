// review: style=2026-11-14 changelog=2026-10-02
#import "../../../../global.typ": *

#let ability_data = (
    name: "Force of Will",
    type: (
        "Ability",
        "Mage",
        "Invoker of Control",
    ),
    blocks: (
      (
        kind: "active",
        limitation: per_round(1),
        effect: [During your turn, #kw_demand_control.],
      ),
    ),
    reminder: (mage_keywords.demand_control,),
)

#let force_of_will = creat_ability(ability_data)
