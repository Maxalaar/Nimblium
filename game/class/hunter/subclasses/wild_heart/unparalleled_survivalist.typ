#import "/global.typ": *

#let ability_data = (
    name: "Unparalleled Survivalist",
    type: (
        "Ability",
        "Hunter",
        "Wild Heart",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: per_turn(1),
        effect: [When you attack, you may first move up to half your #speed.],
      ),
      (kind: "passive", effect: [Your #defense increases by #WIL.]),
    ),
)

#let unparalleled_survivalist = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The 1/turn limit is not in the book. It has been on the card since its
creation and is kept until decided otherwise.
*/
