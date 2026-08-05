#import "../../../global.typ": *

#let ability_data = (
    name: "You’re Next!",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action",),
        effect: [While Raging, you can make a Might skill check to demoralize an enemy within Reach 12 (DC: their current HP). On a success, they immediately flee the battle.],
      ),
    ),
    reminder: (berserker_keywords.raging,),
)

#let youre_next = creat_ability(ability_data)
