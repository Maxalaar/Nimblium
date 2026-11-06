#import "../../../../global.typ": *

#let ability_data = (
    name: "I Have the High Ground",
    type: (
        "Ability",
        "Hunter",
        "Wild Heart",
    ),
    blocks: (
      (kind: "passive", effect: [When you roll Initiative or gain one or more #TotH charges, move up to half your #speed, ignoring #kw_difficult_terrain.]),
    ),
    reminder: (keywords.difficult_terrain,),
)

#let i_have_the_high_ground = creat_ability(ability_data)
