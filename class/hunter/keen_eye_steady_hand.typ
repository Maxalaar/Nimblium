#import "../../global.typ": *

#let ability_data = (
    name: "Keen Eye, Steady Hand",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (kind: "passive", effect: [Add #WIL to the damage of your ranged weapon attacks.]),
    ),
)

#let keen_eye_steady_hand = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
