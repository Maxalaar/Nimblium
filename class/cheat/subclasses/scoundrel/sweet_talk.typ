#import "../../../../global.typ": *

#let ability_data = (
    name: "Sweet Talk",
    type: (
        "Ability",
        "Cheat",
        "Scoundrel",
    ),
    effect:[
      \
      You may gain advantage on all Influence checks with NPCs you’ve just met for the first time. This lasts until you fail an Influence check with them or until you meet a 2nd time.\
      You have disadvantage on Influence checks with them after you use this ability (until you get back on their good side).
    ],
)

#let sweet_talk = creat_ability(ability_data)