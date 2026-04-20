#import "../../global.typ": *

#let ability_data = (
    name: "Hunter’s Mark",
    type: (
        "Ability",
        "Hunter",
    ),
    cost: (
        "1 Action",
    ),
    effect:[
        \
        A creature you can see is marked as your quarry for 1 day (or until you mark another creature).\
        It can’t be hidden from you, and your attacks against it gain your choice of advantage OR +LVL damage (choose before each attack).
    ],
)

#let hunter_mark = creat_ability(ability_data)