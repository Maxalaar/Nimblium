#import "../../../global.typ": *

#let ability_data = (
    name: "Not Beyond MY Reach",
    type: (
        "Ability",
        "Shepherd",
        "Sacred Grace",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [Your healing can target creatures that have been dead for less than 1 round. For every 10 #HP a dead creature is healed this way, you may have it recover 1 Wound instead. You must heal at least 1 Wound to revive it.],
      ),
    ),
)

#let not_beyond_my_reach = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
