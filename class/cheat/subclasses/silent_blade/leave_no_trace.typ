#import "../../../../global.typ": *

#let ability_data = (
    name: "Leave No Trace",
    type: (
        "Ability",
        "Cheat",
        "Silent Blade",
    ),
    effect:[
        Advantage on Stealth checks when you are at full health.
    ],
)

#let leave_no_trace = creat_ability(ability_data)