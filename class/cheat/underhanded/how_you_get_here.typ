#import "../../../global.typ": *

#let ability_data = (
    name: "How’d YOU get here?!",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    cost: (
        "2 Action",
    ),
    effect:[Instantly place yourself up to 4 spaces away, adjacent to a Distracted target, and make a melee attack against them. If you crit, you may place yourself again.],
)

#let how_you_get_here = creat_ability(ability_data)