#import "/global.typ": *

#let ability_data = (
    name: "Eager for Battle",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (kind: "passive", effect: [During your first turn of each encounter, you may move up to #times(2, DEX) spaces.]),
    ),
)

#let eager_for_battle = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: No Advantage on Initiative (no Initiative, user ruling 2026-11-28). The card keeps its move on your first turn.
*/
