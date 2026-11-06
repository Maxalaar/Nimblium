#import "../../global.typ": *

#let ability_data = (
    name: "Archmage",
    type: (
        "Ability",
        "Mage",
    ),
    blocks: (
      (kind: "passive", effect: [The first tiered spell you cast each encounter costs 1 action less and 5 fewer mana.]),
    ),
)

#let archmage = creat_ability(ability_data)
