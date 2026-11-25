#import "/global.typ": *

#let ability_data = (
    name: "Unstoppable Force",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [While you are #kw_dying, whenever you take damage, you gain 1 Wound, or 2 on a critical hit, instead of the usual amount.],
      ),
    ),
    reminder: (conditions.dying,),
)

#let unstoppable_force = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
