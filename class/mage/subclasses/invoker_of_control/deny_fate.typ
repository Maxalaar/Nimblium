#import "../../../../global.typ": *

#let ability_data = (
    name: "Deny Fate",
    type: (
        "Ability",
        "Mage",
        "Invoker of Control",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever you miss with a spell, or one or more creatures save against a spell you cast, you must #kw_demand_control.]),
    ),
    reminder: (mage_keywords.demand_control,),
)

#let deny_fate = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
