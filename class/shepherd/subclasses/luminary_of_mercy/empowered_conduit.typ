#import "../../../../global.typ": *

#let ability_data = (
    name: "Empowered Conduit",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Mercy",
    ),
    blocks: (
      (kind: "passive", effect: [Your Conduit of Light may target 1 additional creature.]),
      (kind: "passive", effect: [Regain 1 use of Searing Light when you roll Initiative. This expires if unspent at the end of combat.]),
    ),
)

#let empowered_conduit = creat_ability(ability_data)
