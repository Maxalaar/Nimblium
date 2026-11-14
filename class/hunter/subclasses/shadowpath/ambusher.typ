#import "../../../../global.typ": *

#let ability_data = (
    name: "Ambusher",
    type: (
        "Ability",
        "Hunter",
        "Shadowpath",
    ),
    blocks: (
      (kind: "passive", effect: [When you roll Initiative, you may use Hunter's Mark for free.]),
      (kind: "passive", effect: [You have advantage on the first attack you make each encounter.]),
    ),
)

#let ambusher = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
