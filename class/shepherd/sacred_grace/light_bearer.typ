#import "../../../global.typ": *

#let ability_data = (
    name: "Light Bearer",
    type: (
        "Ability",
        "Shepherd",
        "Sacred Grace",
    ),
    blocks: (
      (kind: "passive", effect: [Regain 1 use of Searing Light when you roll Initiative. This expires if unspent at the end of combat.]),
    ),
)

#let light_bearer = creat_ability(ability_data)
