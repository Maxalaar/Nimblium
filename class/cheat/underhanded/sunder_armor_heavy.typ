#import "../../../global.typ": *

#let ability_data = (
    name: "Sunder Armor Heavy",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action",),
        effect: [Requires Sunder Armor Medium. When you crit an enemy with heavy armor, until the start of your next turn, all melee attacks against that target ignore its armor.],
      ),
    ),
)

#let sunder_armor_heavy = creat_ability(ability_data)
