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
        cost: (actions(1),),
        effect: [Requires Sunder Armor Medium. When you crit an enemy, its #defense is reduced by 20 against melee attacks until the start of your next turn.],
      ),
    ),
)

#let sunder_armor_heavy = creat_ability(ability_data)
