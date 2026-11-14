#import "../../../../global.typ": *

#let ability_data = (
    name: "Powerful Healer",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Mercy",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: per_safe_rest(WIL),
        effect: [Whenever you would roll dice to heal, you may instead heal the maximum amount you could roll, or give that many temp #HP.],
      ),
    ),
)

#let powerful_healer = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
