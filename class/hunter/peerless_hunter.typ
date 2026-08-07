#import "../../global.typ": *

#let ability_data = (
    name: "Peerless Hunter",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (kind: "passive", effect: [You can Defend against your quarry for free.]),
    ),
)

#let peerless_hunter = creat_ability(ability_data)
