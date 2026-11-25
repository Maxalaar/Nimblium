#import "/global.typ": *

#let ability_data = (
    name: "Methodical Spellweaver",
    type: (
        "Ability",
        "Mage",
        "Spellshaper",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1),),
        effect: [When you cast a spell, its mana cost is reduced by 2, to a minimum of 1.],
      ),
    ),
)

#let methodical_spellweaver = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
