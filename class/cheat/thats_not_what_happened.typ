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
        cost: (actions(1),),
        limitation: per_safe_rest(1),
        effect: [After a #kw_distracted enemy attacks you, you may change the #primary_die roll to whatever you like. Changing the die to the minimum value counts as a miss.],
      ),
    ),
    reminder: (keywords.distracted,),
)

#let thats_not_what_happened = creat_ability(ability_data)
