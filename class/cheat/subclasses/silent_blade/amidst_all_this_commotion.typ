#import "../../../../global.typ": *

#let ability_data = (
    name: "Amidst All This Commotion…",
    type: (
        "Ability",
        "Cheat",
        "Silent Blade",
    ),
    effect:[
        If a creature dies while you Sneak Attack them, you may turn Invisible until you attack again or until the beginning of your next turn.
    ],
    reminder: (conditions.invisible,),
)

#let amidst_all_this_commotion = creat_ability(ability_data)