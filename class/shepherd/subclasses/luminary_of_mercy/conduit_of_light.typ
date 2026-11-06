#import "../../../../global.typ": *

#let ability_data = (
    name: "Conduit of Light",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Mercy",
    ),
    blocks: (
      (
        kind: "passive",
        cost: ("1 Searing Light use",),
        effect: [When an effect caused by you would heal #HP, you may heal (or damage, ignoring armor) another target within 6 spaces of yourself for the same amount.],
      ),
    ),
)

#let conduit_of_light = creat_ability(ability_data)
