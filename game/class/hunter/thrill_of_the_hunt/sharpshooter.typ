#import "/global.typ": *

#let ability_data = (
    name: "Sharpshooter",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt,
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1), toth_charges(1),),
        effect: [If you haven't moved this turn, attack a #kw_marked creature 4 or more spaces away. The attack deals double damage.],
      ),
    ),
    reminder: (hunter_keywords.marked,),
)

#let sharpshooter = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
