#import "../../../../global.typ": *

#let ability_data = (
    name: "Ha! I'm Over Here!",
    type: (
        "Ability",
        "Hunter",
        "Wild Heart",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: "1/safe rest",
        effect: [If an attack would cause you to drop to 0 HP, you instead move up to your speed and take no damage.],
      ),
    ),
)

#let ha_im_over_here = creat_ability(ability_data)
