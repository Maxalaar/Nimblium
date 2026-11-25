#import "/global.typ": *

#let ability_data = (
    name: "Wild Endurance",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (kind: "passive", effect: [At the start of your turn, gain 1 #TotH charge.]),
    ),
)

#let wild_endurance = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
