#import "/global.typ": *

#let ability_data = (
    name: "Pocket Sand",
    type: (
        "Ability",
        "Cheat",
        "Scoundrel",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: per_encounter(2),
        effect: [When you Defend against an adjacent creature, it becomes #kw_blind until the start of its next turn and must reroll the attack.],
      ),
    ),
    reminder: (conditions.blind,),
)

#let pocket_sand = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
