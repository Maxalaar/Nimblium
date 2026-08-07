#import "../../global.typ": *

#let ability_data = (
    name: "Hunter's Resolve",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever you have no TotH charges, treat all creatures as your quarry for movement and melee attacks.]),
    ),
)

#let hunters_resolve = creat_ability(ability_data)
