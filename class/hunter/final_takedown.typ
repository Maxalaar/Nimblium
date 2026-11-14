#import "../../global.typ": *

#let ability_data = (
    name: "Final Takedown",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1), toth_charges(1),),
        effect: [Make a melee attack against a #kw_bloodied #kw_marked creature. The attack is a crit, and your Hunter's Mark damage is doubled. If the creature survives, it crits you back.],
      ),
    ),
    reminder: (hunter_keywords.marked, conditions.bloodied,),
)

#let final_takedown = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
