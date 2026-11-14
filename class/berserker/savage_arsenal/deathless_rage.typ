// review: style=2026-11-14 changelog=2026-10-02
#import "../../../global.typ": *

#let ability_data = (
    name: "Deathless Rage",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (
        kind: "active",
        cost: (wounds(1),),
        limitation: per_turn(1),
        effect: [Gain 1 action and 1 Fury Die. You can use this ability only while you are #kw_dying.],
      ),
    ),
    reminder: (conditions.dying,),
)

#let deathless_rage = creat_ability(ability_data)
