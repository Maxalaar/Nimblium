#import "/global.typ": *

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
    levels: [
      *Level 15:* You may resolve the chosen option twice. You may also use Force of Will outside your turn, for 1 action.
    ],
    reminder: (mage_keywords.demand_control,),
)

#let force_of_will = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Supreme Control (level 15) is a Levels line; its Reaction without a trigger
becomes "outside your turn, for 1 action".
*/
