#import "../../../global.typ": *

#let ability_data = (
    name: "Hail of Arrows",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt,
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(2), toth_charges(1),),
        effect: [At half your weapon's range, attack each creature in a #times(3, 3) area. Each of them becomes #kw_slowed.],
      ),
    ),
    reminder: (conditions.slowed,),
)

#let hail_of_arrows = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
