#import "../../../../global.typ": *

#let ability_data = (
    name: "Thrive in Chaos",
    type: (
        "Ability",
        "Mage",
        "Invoker of Chaos",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever you #kw_invoke_chaos, you may roll twice and apply both results.]),
      (
        kind: "passive",
        limitation: per_safe_rest(1),
        effect: [When you #kw_invoke_chaos, you may roll twice and choose which result applies instead.],
      ),
    ),
    reminder: (mage_keywords.invoke_chaos,),
)

#let thrive_in_chaos = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
