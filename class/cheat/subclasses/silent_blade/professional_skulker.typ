#import "../../../../global.typ": *

#let ability_data = (
    name: "Professional Skulker",
    type: (
        "Ability",
        "Cheat",
        "Silent Blade",
    ),
    blocks: (
      (kind: "passive", effect: [You gain a climbing #speed.]),
      (kind: "narrative", effect: [You have #kw_advantage on Stealth checks. This ability replaces Leave No Trace.]),
    ),
)

#let professional_skulker = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
