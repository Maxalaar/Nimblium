#import "/global.typ": *

#let ability_data = (
    name: "Primal Predator",
    type: (
        "Ability",
        "Hunter",
        "Shadowpath",
    ),
    blocks: (
      (
        kind: "active",
        limitation: per_encounter(1),
        effect: [This turn, your weapon attacks ignore #kw_cover and #defense.],
      ),
    ),
    levels: [
      *Level 15:* You can use it twice per encounter.
    ],
    reminder: (keywords.cover,),
)

#let primal_predator = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The first half of Apex Predator (level 15, same subclass) is its Levels line.
*/
