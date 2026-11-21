#import "../../../global.typ": *

#let ability_data = (
    name: "Guiding Spirit",
    type: (
        "Ability",
        "Shepherd",
        "Sacred Grace",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [When your Spirit Companion rolls a 6 or higher on its Die while attacking, the next attack against the target has #kw_advantage.],
      ),
    ),
)

#let guiding_spirit = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
