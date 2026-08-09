#import "../../../global.typ": *

#let ability_data = (
    name: "Not Beyond MY Reach",
    type: (
        "Ability",
        "Shepherd",
        "Sacred Grace",
    ),
    blocks: (
      (kind: "passive", effect: [You may target creatures who have been dead less than 1 round with your healing. For every 10 HP a dead creature is healed this way, you may have them recover 1 Wound instead. You must heal at least 1 Wound to revive them.]),
    ),
)

#let not_beyond_my_reach = creat_ability(ability_data)
