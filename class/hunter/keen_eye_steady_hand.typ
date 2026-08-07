#import "../../global.typ": *

#let ability_data = (
    name: "Keen Eye, Steady Hand",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (kind: "passive", effect: [Add WIL to your ranged weapon damage.]),
    ),
)

#let keen_eye_steady_hand = creat_ability(ability_data)
