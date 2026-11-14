// review: style=2026-11-14 changelog=2026-10-02
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
        effect: [When you crit an enemy, its #defense is reduced by 20 against melee attacks until the start of your next turn. You must have Sunder Armor Medium to choose this ability.],
      ),
    ),
)

#let sunder_armor_heavy = creat_ability(ability_data)
