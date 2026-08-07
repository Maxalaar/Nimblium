#import "../../../global.typ": *

#let ability_data = (
    name: "Sunder Armor Heavy",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (kind: "passive", effect: [When you crit an enemy with heavy armor. Until the start of your next turn, all melee attacks against that target ignore its armor.]),
    ),
)

#let sunder_armor_heavy = creat_ability(ability_data)
