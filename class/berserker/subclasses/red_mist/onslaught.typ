#import "../../../../global.typ": *

#let ability_data = (
    name: "Onslaught",
    type: (
        "Ability",
        "Berserker",
        "Red Mist",
    ),
    blocks: (
      (kind: "active", limitation: "1/round", effect: [Move for free.]),
      (kind: "passive", effect: [While #keyword_style[Raging], gain +2 speed.]),
    ),
    reminder: (berserker_keywords.raging,),
)

#let onslaught = creat_ability(ability_data)
