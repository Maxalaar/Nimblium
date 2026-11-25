#import "/global.typ": *

#let ability_data = (
    name: "Misdirection",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (kind: "passive", effect: [Your #defense increases by #INT.]),
      (kind: "passive", effect: [Whenever you Defend, you may halve the damage instead.]),
    ),
)

#let misdirection = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
