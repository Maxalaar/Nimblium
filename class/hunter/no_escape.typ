#import "../../global.typ": *

#let ability_data = (
    name: "No Escape",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (
        kind: "active",
        limitation: "2/round",
        effect: [Whenever an ally makes an opportunity attack, you may also make a ranged opportunity attack against the same target.]
      ),
    ),
)

#let no_escape = creat_ability(ability_data)
