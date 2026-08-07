#import "../../../../global.typ": *

#let ability_data = (
    name: "Unbreakable",
    type: (
        "Ability",
        "Berserker",
        "Mountainheart",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: "1/encounter",
        effect: [While #keyword_style[Raging], if you would suffer Wound or other negative condition of your choice, you don’t.],
      ),
    ),
    reminder: (berserker_keywords.raging,),
)

#let unbreakable = creat_ability(ability_data)
