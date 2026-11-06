#import "../../../../global.typ": *

#let ability_data = (
    name: "Merciful Healing",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Mercy",
    ),
    blocks: (
      (kind: "passive", effect: [When an effect caused by you heals a #kw_dying creature, they are healed for twice as much.]),
      (
        kind: "passive",
        limitation: per_round(1),
        effect: [Your Spirit Companion can act for free while you are #kw_dying.],
      ),
    ),
    reminder: (conditions.dying,),
)

#let merciful_healing = creat_ability(ability_data)
