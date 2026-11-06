#import "../../../global.typ": *

#let ability_data = (
    name: "Sunder Armor Medium",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (kind: "passive", effect: [When you crit an enemy with medium armor, until the start of your next turn, all melee attacks against that target ignore its armor.]),
    ),
)

#let sunder_armor_medium = creat_ability(ability_data)
