#import "/global.typ": *

#let ability_data = (
    name: "Apex Predator",
    type: (
        "Ability",
        "Hunter",
        "Shadowpath",
    ),
    blocks: (
      (kind: "passive", effect: [When combat starts, gain 1 #TotH charge.]),
    ),
)

#let apex_predator = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Its other half (Primal Predator twice per encounter) is a Levels line on
Primal Predator.
*/
