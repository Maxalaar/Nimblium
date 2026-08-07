#import "../../../../global.typ": *

#let ability_data = (
    name: "Opportunistic Frenzy",
    type: (
        "Ability",
        "Berserker",
        "Red Mist",
    ),
    blocks: (
      (kind: "passive", effect: [While #keyword_style[Raging], whenever an enemy enters your melee weapon’s reach you can make opportunity attack without disadvantage for free.]),
    ),
    reminder: (berserker_keywords.raging,),
)

#let opportunistic_frenzy = creat_ability(ability_data)
