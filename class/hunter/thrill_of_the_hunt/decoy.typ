#import "../../../global.typ": *

#let ability_data = (
    name: "Decoy",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1), toth_charges(1)),
        effect: [When you Defend, the attack targeting you misses, and you may move up to half your #speed.],
      ),
    ),
)

#let decoy = creat_ability(ability_data)