#import "../../../global.typ": *

#let ability_data = (
    name: "Sunder Armor (Medium)",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (kind: "passive", effect: [When you crit an enemy with medium armor, sunder their armor. Until the start of your next turn, ALL melee attacks against that target ignore its armor.]),
    ),
)

#let sunder_armor_medium = creat_ability(ability_data)
