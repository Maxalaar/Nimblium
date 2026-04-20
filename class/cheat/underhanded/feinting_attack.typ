#import "../../../global.typ": *

#let ability_data = (
    name: "Feinting Attack",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    effect:[If you miss for the 2nd time in a single round, you may change the primary die roll to any result instead (changing it to the max value counts as a crit).],
)

#let feinting_attack = creat_ability(ability_data)