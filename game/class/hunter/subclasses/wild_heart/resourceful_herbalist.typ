#import "/global.typ": *

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
        effect: [When you take a #safe_rest near a place where plants or fungi grow, you may spend a day to craft a number of Healing Salves equal to your #WIL. Only you or another experienced herbalist can use them. They expire when you take a #safe_rest.],
      ),
      (kind: "narrative", effect: [Add your #WIL to your Examination checks.]),
      (
        kind: "active",
        cost: (actions(1),),
        effect: [Use a Healing Salve to heal yourself or an adjacent creature for #times(WIL, "d8") #HP.],
      ),
    ),
)

#let resourceful_herbalist = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
