#import "../../../../global.typ": *

#let ability_data = (
    name: "Opportunistic Frenzy",
    type: (
        "Ability",
        "Berserker",
        "Red Mist",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1),),
        limitation: per_round(1),
        effect: [While #kw_raging, you can make opportunity attacks without disadvantage, including whenever an enemy enters your melee weapon's reach.],
      ),
    ),
    reminder: (berserker_keywords.raging,),
)

#let opportunistic_frenzy = creat_ability(ability_data)
