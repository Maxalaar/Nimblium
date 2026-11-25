#import "/global.typ": *

#let ability_data = (
    name: "Heavy Shot",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt,
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1), toth_charges(1),),
        effect: [Attack with a ranged weapon at half its range. The target suffers #kw_knockback 2.],
      ),
    ),
    reminder: (keywords.knockback,),
)

#let heavy_shot = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
