#import "../../../global.typ": *

#let ability_data = (
    name: "Elemental Transmutation",
    type: (
        "Ability",
        "Mage",
        "Spellshaper",
    ),
    blocks: (
      (
        kind: "active",
        cost: (mana(1),),
        effect: [When you cast a spell, change its damage type to fire, ice, lightning, necrotic or radiant.],
      ),
    ),
)

#let elemental_transmutation = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
