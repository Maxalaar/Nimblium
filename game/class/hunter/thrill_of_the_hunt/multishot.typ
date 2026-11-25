#import "/global.typ": *

#let ability_data = (
    name: "Multishot",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt,
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1), toth_charges(1),),
        effect: [Attack a #kw_marked creature with a ranged weapon at half its range. Another creature within 2 spaces of it takes the same damage.],
      ),
    ),
    reminder: (hunter_keywords.marked,),
)

#let multishot = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
