#import "/global.typ": *

#let item_data = (
    name: "Handwraps of Force",
    type: ("Item", "Magic"),
    level: 5,
    slots: 1,
    blocks: (
      (kind: "passive", effect: [While you wear them, whenever you hit with an unarmed strike, you may give the target #kw_knockback 2 and move 2 spaces in the opposite direction.]),
      (kind: "active", cost: (actions(1),), effect: [Move up to 4 spaces in any direction, even upward.]),
    ),
    reminder: (keywords.knockback,),
)

#let handwraps_of_force = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.40 (rare).

house-rule: Rarity becomes a level (Rare: LVL 5); a magic item counts toward the magic
items you can carry (Adventure page, Items).
house-rule: The push is a Knockback, the only forced movement.
*/
