#import "../../../global.typ": *

#let ability_data = (
    name: "Decoy",
    type: (
        "Ability",
        "Hunter",
        "Thrill of the hunt"
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action", "1 TotH charge"),
        effect: [When you Defend, the attack targeting you misses, and you may move up to half your speed.],
      ),
    ),
)

#let decoy = creat_ability(ability_data)