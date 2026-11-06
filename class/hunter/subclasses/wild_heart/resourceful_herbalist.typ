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
        effect: [Whenever you #safe_rest in a location near plants, you may spend a day to craft a number of Healing Salves equal to your #WIL. These salves expire whenever you #safe_rest.]),
      (
        kind: "active",
        cost: (actions(1),),
        effect: [Use one Healing Salve to heal yourself or an adjacent creature by #times(WIL, "d6") #HP.],
      ),
    ),
)

#let resourceful_herbalist = creat_ability(ability_data)
