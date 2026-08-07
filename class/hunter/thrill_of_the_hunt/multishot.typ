#import "../../../global.typ": *

#let ability_data = (
    name: "Multishot",
    type: (
        "Ability",
        "Hunter",
        "Thrill of the hunt"
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action", "1 TotH charge"),
        effect: [Attack your quarry at half range with a ranged weapon. Choose a second target within 2 spaces of the first, they take the same amount of damage.],
      ),
    ),
)

#let multishot = creat_ability(ability_data)
