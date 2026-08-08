#import "../../../../global.typ": *

#let ability_data = (
    name: "Skilled Navigator",
    type: (
        "Ability",
        "Hunter",
        "Shadowpath",
    ),
    blocks: (
      (kind: "narrative", effect: [You cannot become lost by nonmagical means.]),
    ),
)

#let skilled_navigator = creat_ability(ability_data)
