#import "../../../global.typ": *

#let ability_data = (
    name: "You're Next!",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1),),
        effect: [While #kw_raging, target a creature within Reach 12 and make a Might skill check with a DC equal to the target creature's #HP. On a success, they immediately flee the battle.],
      ),
    ),
    reminder: (berserker_keywords.raging,),
)

#let youre_next = creat_ability(ability_data)
