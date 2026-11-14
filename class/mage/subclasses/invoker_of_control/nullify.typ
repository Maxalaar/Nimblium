#import "../../../../global.typ": *

#let ability_data = (
    name: "Nullify",
    type: (
        "Ability",
        "Mage",
        "Invoker of Control",
    ),
    blocks: (
      (
        kind: "active",
        limitation: per_encounter(1),
        effect: [Your next action this turn ignores all disadvantage and other negative effects. Then #kw_demand_control.],
      ),
    ),
    reminder: (mage_keywords.demand_control,),
)

#let nullify = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
