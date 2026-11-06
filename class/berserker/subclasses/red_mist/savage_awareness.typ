#import "../../../../global.typ": *

#let ability_data = (
    name: "Savage Awareness",
    type: (
        "Ability",
        "Berserker",
        "Red Mist",
    ),
    blocks: (
      (kind: "passive", effect: [While #kw_raging you get #kw_blindsight 2.]),
      (kind: "narrative", effect: [Advantage on perception checks to notice or track down blood.]),
    ),
    reminder: (berserker_keywords.raging, keywords.blindsight),
)

#let savage_awareness = creat_ability(ability_data)
