#import "/global.typ": *

#let ability_data = (
    name: "Impressive Form",
    type: (
        "Ability",
        "Hunter",
        "Wild Heart",
    ),
    blocks: (
      (kind: "passive", effect: [Your max #HP increases by 5.]),
      (kind: "passive", effect: [Your Hit Dice become d10s.]),
    ),
)

#let impressive_form = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
