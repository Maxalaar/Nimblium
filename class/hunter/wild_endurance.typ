#import "../../global.typ": *

#let ability_data = (
    name: "Wild Endurance",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (kind: "passive", effect: [Gain 1 #TotH charge at the start of your turns.]),
    ),
)

#let wild_endurance = creat_ability(ability_data)
