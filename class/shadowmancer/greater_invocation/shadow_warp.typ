#import "../../../global.typ": *

#let ability_data = (
    name: "Shadow Warp",
    type: ("Ability", "Shadowmancer", "Greater Invocation"),
    blocks: (
      (kind: "active", cost: (actions(1),), effect: [Swap places with a creature within 12 spaces that took necrotic damage this turn.]),
    ),
)

#let shadow_warp = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
