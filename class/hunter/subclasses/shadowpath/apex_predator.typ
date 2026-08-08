#import "../../../../global.typ": *

#let ability_data = (
    name: "Apex Predator",
    type: (
        "Ability",
        "Hunter",
        "Shadowpath",
    ),
    blocks: (
      (kind: "passive", effect: [You may use your Primal Predator ability twice each encounter.]),
      (kind: "passive", effect: [Gain 1 TotH charge when you roll Initiative.]),
    ),
)

#let apex_predator = creat_ability(ability_data)
