#import "../../../../global.typ": *

#let ability_data = (
    name: "Cunning Strike",
    type: (
        "Ability",
        "Cheat",
        "Silent Blade",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever you crit, deal #times(2, INT) additional damage.]),
    ),
)

#let cunning_strike = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
