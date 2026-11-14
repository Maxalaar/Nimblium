// review: style=2026-11-14 changelog=2026-10-02
#import "../../../../global.typ": *

#let ability_data = (
    name: "Savage Awareness",
    type: (
        "Ability",
        "Berserker",
        "Red Mist",
    ),
    blocks: (
      (kind: "passive", effect: [While you are #kw_raging, you have #kw_blindsight 2.]),
      (kind: "narrative", effect: [You have advantage on Perception checks to notice or track down blood.]),
    ),
    reminder: (berserker_keywords.raging, keywords.blindsight,),
)

#let savage_awareness = creat_ability(ability_data)
