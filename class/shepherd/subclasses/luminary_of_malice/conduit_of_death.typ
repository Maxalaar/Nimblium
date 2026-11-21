#import "../../../../global.typ": *

#let ability_data = (
    name: "Conduit of Death",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Malice",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [When you roll Initiative, regain 1 use of #card_ref("Veilwalker's Blessing"). This use is lost at the end of combat if you haven't spent it.],
      ),
    ),
)

#let conduit_of_death = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
