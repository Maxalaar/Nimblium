#import "/global.typ": *

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

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Medium and Heavy stay two abilities that lower the target's Defense by 10 and
20, to match the monster Defense house rule. The 2026-10-02 changelog merges them into one
ability: the next non-crit Primary Die rolled against the creature gets +2.
*/
