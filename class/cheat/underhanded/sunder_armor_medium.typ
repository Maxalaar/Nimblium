#import "../../../global.typ": *

#let ability_data = (
    name: "Sunder Armor Medium",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1),),
        effect: [When you crit an enemy, its #defense is reduced by 10 against melee attacks until the start of your next turn.],
      ),
    ),
)

#let sunder_armor_medium = creat_ability(ability_data)
