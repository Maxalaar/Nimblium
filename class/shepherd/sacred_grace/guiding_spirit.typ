#import "../../../global.typ": *

#let ability_data = (
    name: "Guiding Spirit",
    type: (
        "Ability",
        "Shepherd",
        "Sacred Grace",
    ),
    blocks: (
      (kind: "passive", effect: [When your Spirit Companion rolls a 6 or higher on its damage die, the next attack against that target has advantage.]),
    ),
)

#let guiding_spirit = creat_ability(ability_data)
