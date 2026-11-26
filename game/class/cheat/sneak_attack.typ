#import "/global.typ": *

#let ability_data = (
    name: "Sneak Attack",
    type: (
        "Ability",
        "Cheat",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: per_turn(1),
        effect: [When you crit, deal the additional damage shown in Levels.],
      ),
    ),
    levels: [
      *Level 1:* 1d6 additional damage.\
      *Level 3:* 1d8 additional damage.\
      *Level 7:* 2d8 additional damage.\
      *Level 9:* 2d10 additional damage.\
      *Level 11:* 2d12 additional damage.\
      *Level 15:* 2d20 additional damage.\
      *Level 17:* 3d20 additional damage.
    ],
)

#let sneak_attack = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
