#import "../../../../global.typ": *

#let ability_data = (
    name: "Conduit of Death",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Malice",
    ),
    blocks: (
      (kind: "passive", effect: [Regain 1 use of Veilwalker's Blessing when you roll Initiative. This expires if unspent at the end of combat.]),
    ),
)

#let conduit_of_death = creat_ability(ability_data)
