#import "../../../global.typ": *

#let ability_data = (
    name: "Sunder Armor (Heavy)",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (kind: "passive", effect: [*Requires Sunder Armor (Medium).* Your Sunder Armor ability now also applies to enemies wearing heavy armor.]),
    ),
)

#let sunder_armor_heavy = creat_ability(ability_data)
