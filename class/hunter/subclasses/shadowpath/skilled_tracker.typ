#import "../../../../global.typ": *

#let ability_data = (
    name: "Skilled Tracker",
    type: (
        "Ability",
        "Hunter",
        "Shadowpath",
    ),
    blocks: (
      (kind: "narrative", effect: [You have advantage on skill checks to track creatures.]),
    ),
)

#let skilled_tracker = creat_ability(ability_data)
