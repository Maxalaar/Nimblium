#import "../../../../global.typ": *

#let ability_data = (
    name: "Leave No Trace",
    type: (
        "Ability",
        "Cheat",
        "Silent Blade",
    ),
    blocks: (
      (kind: "narrative", effect: [You have #kw_advantage on Stealth checks while you are at full #HP.]),
    ),
)

#let leave_no_trace = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
