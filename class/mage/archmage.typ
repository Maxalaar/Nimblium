#import "../../global.typ": *

#let ability_data = (
    name: "Archmage",
    type: (
        "Ability",
        "Mage",
    ),
    blocks: (
      (kind: "passive", effect: [The first tiered spell you cast each encounter costs 1 fewer action and 5 less mana.]),
    ),
)

#let archmage = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
