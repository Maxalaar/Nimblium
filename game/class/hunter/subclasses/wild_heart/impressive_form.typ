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
      (kind: "passive", effect: [Your Vitality increases by 2.]),
    ),
)

#let impressive_form = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Vitality +2, the gap between a d8 and a d10 (book: your Hit Dice become d10s).
*/
