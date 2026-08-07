#import "../../../../global.typ": *

#let ability_data = (
    name: "Savage Awareness",
    type: (
        "Ability",
        "Berserker",
        "Red Mist",
    ),
    blocks: (
      (kind: "passive", effect: [While #keyword_style[Raging] you get #keyword_style[Blindsight] 2.]),
      (kind: "narrative", effect: [Advantage on perception checks to notice or track down blood.]),
    ),
    reminder: (berserker_keywords.raging, keywords.blindsight),
)

#let savage_awareness = creat_ability(ability_data)
