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
        effect: [For a number of turns equal to the number of healing charges left, your Spirit Companion deals Die + WIL radiant damage to all enemies within 3 spaces, ignoring armor and cover. During this time, it cannot take any action other than moving. At the end, your Spirit Companion is sacrificed.],
      ),
    ),
)

#let vengeful_spirit = creat_ability(ability_data)
