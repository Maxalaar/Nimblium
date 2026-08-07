#import "../../../global.typ": *

#let ability_data = (
    name: "Fleet Feet",
    type: (
        "Ability",
        "Hunter",
        "Thrill of the hunt"
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 TotH charge",),
        effect: [Move up to your speed, ignoring difficult terrain.],
      ),
    ),
)

#let fleet_feet = creat_ability(ability_data)
