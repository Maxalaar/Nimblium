#import "../../../global.typ": *

#let ability_data = (
    name: "Steal Tempo",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [When a creature takes its second critical hit from you in a round, it becomes #kw_dazed and you give 1 action to an ally.],
      ),
    ),
    reminder: (conditions.dazed,),
)

#let steal_tempo = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
