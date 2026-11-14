#import "../../../global.typ": *

#let ability_data = (
    name: "Extra-Dimensional Vision",
    type: (
        "Ability",
        "Mage",
        "Spellshaper",
    ),
    blocks: (
      (
        kind: "active",
        cost: (mana(2),),
        effect: [When you cast a spell, it ignores line of sight. It passes through barriers and obstacles to reach a target you know of within its Range.],
      ),
    ),
)

#let extra_dimensional_vision = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
