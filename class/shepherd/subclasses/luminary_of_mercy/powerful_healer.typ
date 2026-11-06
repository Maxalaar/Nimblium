#import "../../../../global.typ": *

#let ability_data = (
    name: "Powerful Healer",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Mercy",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: "WIL/Safe Rest",
        effect: [Whenever you would roll dice to heal damage, you may instead heal the max amount you could roll, or give that many temp HP.],
      ),
    ),
)

#let powerful_healer = creat_ability(ability_data)
