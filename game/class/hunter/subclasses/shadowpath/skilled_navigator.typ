#import "/global.typ": *

#let ability_data = (
    name: "Skilled Navigator",
    type: (
        "Ability",
        "Hunter",
        "Shadowpath",
    ),
    blocks: (
      (kind: "narrative", effect: [You can't become lost by nonmagical means.]),
    ),
)

#let skilled_navigator = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
