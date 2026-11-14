#import "../../../global.typ": *

#let ability_data = (
    name: "Dimensional Compression",
    type: (
        "Ability",
        "Mage",
        "Spellshaper",
    ),
    blocks: (
      (
        kind: "active",
        cost: (mana("X"),),
        effect: [When you cast a spell, its Range increases by 4 for each mana spent.],
      ),
    ),
)

#let dimensional_compression = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
