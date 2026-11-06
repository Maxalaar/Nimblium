#import "../../../../global.typ": *

#let ability_data = (
    name: "Resourceful Herbalist",
    type: (
        "Ability",
        "Hunter",
        "Wild Heart",
    ),
    blocks: (
      (
        kind: "narrative",
        effect: [Whenever you Safe Rest in a location near plants, you may spend a day to craft a number of Healing Salves equal to your WIL. These salves expire whenever you Safe Rest.]),
      (
        kind: "active",
        cost: ("1 Action",),
        effect: [Use one Healing Salve to heal yourself or an adjacent creature by WIL $times$ d6 HP.],
      ),
    ),
)

#let resourceful_herbalist = creat_ability(ability_data)
