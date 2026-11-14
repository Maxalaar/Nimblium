#import "../../../../global.typ": *

#let ability_data = (
    name: "Unstoppable Brutality",
    type: (
        "Ability",
        "Berserker",
        "Red Mist",
    ),
    blocks: (
      (
        kind: "active",
        cost: (wounds(1),),
        effect: [Reroll an attack or a save you just made. The reroll ignores all disadvantage. You can use this ability only while you are #kw_raging.],
      ),
    ),
    reminder: (berserker_keywords.raging,),
)

#let unstoppable_brutality = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Written as an active block with a Wound cost, like Deathless Rage. The book
gives no action cost.
*/
