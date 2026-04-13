#import "../../global.typ": *

#let ability_data = (
    name: "Vicious Opportunist",
    type: (
        "Ability",
        "Cheat",
    ),
    limitation: "1/turn",
    effect:"When you hit a Distracted target with a melee attack, you may change the Primary Die roll to whatever you like (changing it to the max value counts as a crit).",
    reminder: (keywords.distracted,),
)

#let vicious_opportunist = creat_ability(ability_data)
#vicious_opportunist