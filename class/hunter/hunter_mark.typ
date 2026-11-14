#import "../../global.typ": *

#let ability_data = (
    name: "Hunter's Mark",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1),),
        effect: [A creature you can see becomes #kw_marked for 1 day or until you make another creature #kw_marked.],
      ),
      (kind: "passive", effect: [A #kw_marked creature can't be hidden from you.]),
      (
        kind: "passive",
        effect: [Before each attack against a #kw_marked creature, choose one: you have advantage on the attack, or it deals #LVL additional damage.],
      ),
    ),
    reminder: (hunter_keywords.marked,),
)

#let hunter_mark = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
