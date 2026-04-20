#import "../../../global.typ": *

#let ability_data = (
    name: "I’m Outta Here!",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    effect:[When an ally within 4 spaces is crit, you may turn invisible until the end of your next turn and then move up to half your speed for free.],
    reminder: (conditions.invisible,)
)

#let i_outta_here = creat_ability(ability_data)