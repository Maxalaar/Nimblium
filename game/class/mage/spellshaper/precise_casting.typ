#import "/global.typ": *

#let ability_data = (
    name: "Precise Casting",
    type: (
        "Ability",
        "Mage",
        "Spellshaper",
    ),
    blocks: (
      (
        kind: "active",
        cost: (mana("X"),),
        effect: [When you cast a spell, choose 1 creature for each mana spent. The spell doesn't affect those creatures.],
      ),
    ),
)

#let precise_casting = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
