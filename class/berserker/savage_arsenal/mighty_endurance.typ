#import "../../../global.typ": *

#let ability_data = (
    name: "Mighty Endurance",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (kind: "passive", effect: [You can survive 4 additional Wounds before you die.]),
    ),
)

#let mighty_endurance = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
