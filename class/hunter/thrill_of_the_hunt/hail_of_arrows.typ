#import "../../../global.typ": *

#let ability_data = (
    name: "Hail of Arrows",
    type: (
        "Ability",
        "Hunter",
        "Thrill of the hunt"
    ),
    blocks: (
      (
        kind: "active",
        cost: ("2 Action", "1 TotH charge"),
        effect: [Shoot all creatures within a 3$times$3 area at half the weapon's range. Their speed is halved until the end of their next turn.],
      ),
    ),
)

#let hail_of_arrows = creat_ability(ability_data)
