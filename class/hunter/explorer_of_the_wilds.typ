#import "../../global.typ": *

#let ability_data = (
    name: "Explorer of the Wilds",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (kind: "passive", effect: [Your #speed increases by 2.]),
      (kind: "passive", effect: [You gain a climbing #speed.]),
    ),
)

#let explorer_of_the_wilds = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
