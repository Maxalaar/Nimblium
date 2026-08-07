#import "../../global.typ": *

#let ability_data = (
    name: "No Escape",
    type: (
        "Ability",
        "Hunter",
    ),
    limitation: "1/turn",
    blocks: (
      (kind: "passive", effect: [Whenever one allie make an opportunity attack, you may also make a ranged opportunity attack against the same target.]),
    ),
)

#let no_escape = creat_ability(ability_data)
