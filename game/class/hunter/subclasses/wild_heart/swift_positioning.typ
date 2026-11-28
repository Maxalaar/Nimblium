#import "/global.typ": *

#let ability_data = (
    name: "Swift Positioning",
    type: (
        "Ability",
        "Hunter",
        "Wild Heart",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [When you roll Initiative or gain one or more #TotH charges, you may move up to half your #speed, ignoring #kw_difficult_terrain.],
      ),
    ),
    reminder: (keywords.difficult_terrain,),
)

#let swift_positioning = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "I Have the High Ground" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
