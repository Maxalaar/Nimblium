#import "../../../global.typ": *

#let ability_data = (
    name: "Hail of Arrows",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(2), toth_charges(1)),
        effect: [Shoot all creatures within a #times(3, 3) area at half the weapon's range. Their #speed is halved until the end of their next turn.],
      ),
    ),
)

#let hail_of_arrows = creat_ability(ability_data)
