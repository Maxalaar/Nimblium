#import "../../../global.typ": *

#let ability_data = (
    name: "Wild Instinct",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt,
    ),
    blocks: (
      (
        kind: "active",
        limitation: per_round(1),
        effect: [Assess for free, with #kw_advantage. You can use this ability only while you have no #TotH charges.],
      ),
    ),
)

#let wild_instinct = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
