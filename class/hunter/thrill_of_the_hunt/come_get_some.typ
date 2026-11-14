#import "../../../global.typ": *

#let ability_data = (
    name: "Come Get Some!",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt,
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1), toth_charges(1),),
        effect: [Attack a creature. It is #kw_taunted by you until the end of its next turn.],
      ),
    ),
    reminder: (conditions.taunted,),
)

#let come_get_some = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
