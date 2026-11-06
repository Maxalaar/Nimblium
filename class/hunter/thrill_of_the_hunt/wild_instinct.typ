#import "../../../global.typ": *

#let ability_data = (
    name: "Wild Instinct",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt
    ),
    blocks: (
      (
        kind: "active",
        limitation: per_round(1),
        effect: [If you have no #TotH charges, assess with advantage.],
      ),
    ),
)

#let wild_instinct = creat_ability(ability_data)
