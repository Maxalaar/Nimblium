#import "../../global.typ": *

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
        effect: [
            When you crit, deal +1d6 damage.\
            \
            *Level 3:* Your Sneak Attack becomes 1d8.\
            *Level 7:* Your Sneak Attack becomes 2d8.\
            *Level 9:* Your Sneak Attack becomes 2d10.\
            *Level 11:* Your Sneak Attack becomes 2d12.\
            *Level 15:* Your Sneak Attack becomes 2d20.\
            *Level 17:* Your Sneak Attack becomes 3d20.\
          ],
      ),
    ),
)

#let sneak_attack = creat_ability(ability_data)