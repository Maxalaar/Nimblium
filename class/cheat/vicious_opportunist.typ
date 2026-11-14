#import "../../global.typ": *

#let ability_data = (
    name: "Vicious Opportunist",
    type: (
        "Ability",
        "Cheat",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: per_turn(1),
        effect: [When you hit a #kw_distracted creature with a melee attack, you may change the #primary_die roll to whatever you like. Changing it to the maximum value counts as a crit.],
      ),
    ),
    reminder: (keywords.distracted,),
)

#let vicious_opportunist = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
