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
        limitation: "1/round",
        effect: [Your first melee attack against a #keyword_style[Bloodied] creature is an automatic critical hit.],
      ),
      (kind: "passive", effect: [Your Spirit Companion deals additional damage equal to your STR.]),
    ),
    reminder: (conditions.bloodied,),
)

#let deathbringers_touch = creat_ability(ability_data)
