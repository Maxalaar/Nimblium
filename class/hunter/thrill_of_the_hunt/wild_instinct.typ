#import "../../../global.typ": *

#let ability_data = (
    name: "Wild Instinct",
    type: (
        "Ability",
        "Hunter",
        "Thrill of the hunt"
    ),
    blocks: (
      (
        kind: "active",
        limitation: "1/round",
        effect: [If you have no TotH charges, assess with advantage.],
      ),
    ),
)

#let wild_instinct = creat_ability(ability_data)
