#import "../../../../global.typ": *

#let ability_data = (
    name: "Merciful Healing",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Mercy",
    ),
    blocks: (
      (kind: "passive", effect: [When an effect caused by you heals a #keyword_style[Dying] creature, they are healed for twice as much.]),
      (
        kind: "passive",
        limitation: "1/round",
        effect: [Your Spirit Companion can act for free while you are #keyword_style[Dying].],
      ),
    ),
    reminder: (conditions.dying,),
)

#let merciful_healing = creat_ability(ability_data)
