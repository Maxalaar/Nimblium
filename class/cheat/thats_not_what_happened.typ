#import "../../global.typ": *

#let ability_data = (
    name: "THAT'S Not What Happened!",
    type: (
        "Ability",
        "Cheat",
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action",),
        limitation: "1/safe rest",
        effect: [After a Distracted enemy attacks you, you may change the Primary Die roll to whatever you like. Changing the die to the minimum value counts as a miss.],
      ),
    ),
    reminder: (keywords.distracted,),
)

#let thats_not_what_happened = creat_ability(ability_data)
