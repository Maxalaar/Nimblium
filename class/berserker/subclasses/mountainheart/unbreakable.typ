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
        limitation: per_encounter(1),
        effect: [While #kw_raging, if you would suffer your last Wound or other negative condition of your choice, you don't.],
      ),
    ),
    reminder: (berserker_keywords.raging,),
)

#let unbreakable = creat_ability(ability_data)
