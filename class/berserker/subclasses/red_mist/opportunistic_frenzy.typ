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
        cost: ("1 Action",),
        limitation: "1/round",
        effect: [While #keyword_style[Raging], you can make opportunity attacks without disadvantage, including whenever an enemy enters your melee weapon's reach.],
      ),
    ),
    reminder: (berserker_keywords.raging,),
)

#let opportunistic_frenzy = creat_ability(ability_data)
