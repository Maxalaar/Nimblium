#import "/global.typ": *

#let item_data = (
    name: "Grim Coronet",
    type: ("Item", "Magic"),
    level: 5,
    slots: 1,
    blocks: (
      (kind: "active", cost: (actions(1),), limitation: per_round(1), effect: [When you would die while wearing it, you gain 3 actions and take a turn at once. You die at the end of that turn.]),
    ),
)

#let grim_coronet = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.40 (rare).

house-rule: Rarity becomes a level (Rare: LVL 5); a magic item counts toward the magic
items you can carry (Adventure page, Items).
*/
