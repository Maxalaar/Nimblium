#import "../../global.typ": *

#let ability_data = (
    name: "Thieves' Cant",
    type: (
        "Ability",
        "Cheat",
    ),
    blocks: (
      (kind: "narrative", effect: [You learn the secret language of rogues and scoundrels.]),
    ),
)

#let thieves_cant = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
