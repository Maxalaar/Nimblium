#import "/global.typ": *

#let ability_data = (
    name: "No Escape",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (
        kind: "active",
        limitation: per_round(2),
        effect: [When an ally makes an opportunity attack, make a ranged opportunity attack against the same target.],
      ),
    ),
)

#let no_escape = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: The 2/round limit is not in the book. It was added to the card on 2026-08-08.
*/
