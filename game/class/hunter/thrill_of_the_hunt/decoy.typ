#import "/global.typ": *

#let ability_data = (
    name: "Decoy",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt,
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1), toth_charges(1),),
        effect: [When you Defend, the attack misses instead, and you may move up to half your #speed.],
      ),
    ),
)

#let decoy = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book gives no action cost beyond the charge. The 1 Action on the card,
there since its creation, is read as the cost of the Defend itself.
*/
