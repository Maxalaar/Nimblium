#import "../../../../global.typ": *

#let ability_data = (
    name: "Professional Skulker",
    type: (
        "Ability",
        "Cheat",
        "Silent Blade",
    ),
    blocks: (
      (kind: "narrative", effect: [Gain a climbing speed and advantage on Stealth checks.]),
    ),
)

#let professional_skulker = creat_ability(ability_data)
