#import "/global.typ": *

#let ability_data = (
    name: "Force of Chaos",
    type: (
        "Ability",
        "Mage",
        "Invoker of Chaos",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever you cast a tiered spell, you may spend 1 less mana. When you do, #kw_invoke_chaos.]),
      (kind: "passive", effect: [Whenever you crit, you may #kw_invoke_chaos.]),
    ),
    reminder: (mage_keywords.invoke_chaos,),
)

#let force_of_chaos = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book says a spell. Written tiered spell, because cantrips cost no mana.
*/
