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
        effect: [While #kw_dying, gain 1 action.],
      ),
    ),
    reminder: (conditions.dying,),
)

#let deathless_rage = creat_ability(ability_data)
