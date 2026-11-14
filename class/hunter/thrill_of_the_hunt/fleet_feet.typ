#import "../../../global.typ": *

#let ability_data = (
    name: "Fleet Feet",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt,
    ),
    blocks: (
      (
        kind: "active",
        cost: (toth_charges(1),),
        limitation: per_round(1),
        effect: [Move up to your #speed, ignoring #kw_difficult_terrain.],
      ),
    ),
    reminder: (keywords.difficult_terrain,),
)

#let fleet_feet = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
