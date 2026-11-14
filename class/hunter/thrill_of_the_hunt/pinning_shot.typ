#import "../../../global.typ": *

#let ability_data = (
    name: "Pinning Shot",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt,
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(3), toth_charges(1),),
        effect: [Attack a #kw_marked creature with a ranged weapon, rolling three times the normal number of damage dice. It becomes #kw_restrained until it escapes with a #dc(10, stat: WIL) check.],
      ),
    ),
    reminder: (hunter_keywords.marked, conditions.restrained,),
)

#let pinning_shot = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
