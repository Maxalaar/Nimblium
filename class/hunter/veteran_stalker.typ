#import "../../global.typ": *

#let ability_data = (
    name: "Veteran Stalker",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (kind: "passive", effect: [Gain a TotH charge whenever you are first #keyword_style[Bloodied] in an encounter and for every Wound you gain.]),
    ),
    reminder: (conditions.bloodied,),
)

#let veteran_stalker = creat_ability(ability_data)
