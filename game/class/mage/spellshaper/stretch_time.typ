#import "/global.typ": *

#let ability_data = (
    name: "Stretch Time",
    type: (
        "Ability",
        "Mage",
        "Spellshaper",
    ),
    blocks: (
      (
        kind: "active",
        cost: (mana(2),),
        effect: [When you cast a spell, its action cost is reduced by 1, to a minimum of 1.],
      ),
    ),
)

#let stretch_time = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
