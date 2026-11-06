#import "../../../../global.typ": *

#let ability_data = (
    name: "Deathbringer's Touch",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Malice",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: per_round(1),
        effect: [Your first melee attack against a #kw_bloodied creature is an automatic critical hit.],
      ),
      (kind: "passive", effect: [Your Spirit Companion deals additional damage equal to your #STR.]),
    ),
    reminder: (conditions.bloodied,),
)

#let deathbringers_touch = creat_ability(ability_data)
