#import "/global.typ": *

#let ability_data = (
    name: "Grease Trap",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt,
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1), toth_charges(1),),
        limitation: per_encounter(1),
        effect: [When an enemy moves adjacent to you or to an ally within 6 spaces, it falls #kw_prone and becomes #kw_smoldering. It is #kw_vulnerable to the next fire damage it takes.],
      ),
    ),
    reminder: (conditions.prone, conditions.smoldering, keywords.vulnerable,),
)

#let grease_trap = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
