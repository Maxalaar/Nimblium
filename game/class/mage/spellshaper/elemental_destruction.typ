#import "/global.typ": *

#let ability_data = (
    name: "Elemental Destruction",
    type: (
        "Ability",
        "Mage",
        "Spellshaper",
    ),
    blocks: (
      (
        kind: "active",
        cost: (mana("X"),),
        effect: [When you hit with a spell, reroll 1 of its dice for each mana spent, up to #WIL dice.],
      ),
    ),
)

#let elemental_destruction = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
