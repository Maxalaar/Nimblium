#import "/global.typ": *

#let ability_data = (
    name: "Taunting Shot",
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

#let taunting_shot = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "Come Get Some!" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
