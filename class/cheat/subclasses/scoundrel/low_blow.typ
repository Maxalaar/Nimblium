#import "../../../../global.typ": *

#let ability_data = (
    name: "Low Blow",
    type: (
        "Ability",
        "Cheat",
        "Scoundrel",
    ),
    effect:[
      When you Sneak Attack, you may spend 2 additional actions to Incapacitate your target for their next turn on a failed STR save (DC 10+INT). Save or fail, they are Taunted by you until you drop to 0 HP.
    ],
    reminder: (conditions.incapacitated, conditions.taunted),
)

#let low_blow = creat_ability(ability_data)