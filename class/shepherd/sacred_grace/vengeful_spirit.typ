#import "../../../global.typ": *

#let ability_data = (
    name: "Vengeful Spirit",
    type: (
        "Ability",
        "Shepherd",
        "Sacred Grace",
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action",),
        effect: [At the end of each of your turns, your Spirit Companion loses 10 HP and deals Die+WIL radiant damage to all enemies within 3 spaces of it, ignoring armor and cover. It cannot take any action other than moving until it reaches 0 HP.],
      ),
    ),
)

#let vengeful_spirit = creat_ability(ability_data)
