#import "/global.typ": *

#let ability_data = (
    name: "Forager",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (kind: "narrative", effect: [You have #kw_advantage on skill checks to find food and water in the wild.]),
    ),
)

#let forager = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
