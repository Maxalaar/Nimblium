#import "../../../../global.typ": *

#let ability_data = (
    name: "Unbreakable",
    type: (
        "Ability",
        "Berserker",
        "Mountainheart",
    ),
    limitation: "1/encounter",
    effect:[
      While Raging, if you would suffer your last Wound or other negative condition of your choice, you don’t.
    ],
    reminder: (berserker_keywords.raging,),
)

#let unbreakable = creat_ability(ability_data)
