#import "../../../global.typ": *

#let ability_data = (
    name: "Mighty Endurance",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (kind: "passive", effect: [You can now survive an additional 4 Wounds before death.]),
    ),
)

#let mighty_endurance = creat_ability(ability_data)
