#import "/global.typ": *

#let ability_data = (
    name: "Master of Chaos",
    type: (
        "Ability",
        "Mage",
        "Invoker of Chaos",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever you #kw_invoke_chaos, roll with #kw_advantage.]),
    ),
    reminder: (mage_keywords.invoke_chaos,),
)

#let master_of_chaos = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
