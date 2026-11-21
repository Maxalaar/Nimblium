#import "../../../../global.typ": *

#let ability_data = (
    name: "Apex Predator",
    type: (
        "Ability",
        "Hunter",
        "Shadowpath",
    ),
    blocks: (
      (kind: "passive", effect: [You can use #card_ref("Primal Predator") twice per encounter.]),
      (kind: "passive", effect: [When you roll Initiative, gain 1 #TotH charge.]),
    ),
)

#let apex_predator = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
