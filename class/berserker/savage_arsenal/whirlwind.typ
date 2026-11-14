#import "../../../global.typ": *

#let ability_data = (
    name: "Whirlwind",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(2),),
        tags: ("AoE",),
        effect: [Attack any number of creatures within your melee weapon's Reach.],
      ),
    ),
)

#let whirlwind = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book says ALL targets. Read as any number of creatures, so you can leave
your allies out.
*/
