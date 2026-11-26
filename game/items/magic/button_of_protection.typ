#import "/global.typ": *

#let item_data = (
    name: "Button of Protection",
    type: ("Item", "Magic"),
    level: 5,
    charges: 1,
    slots: 1,
    blocks: (
      (kind: "active", cost: (actions(1), charge_cost(1)), limitation: per_round(1), effect: [When a creature attacks you, it makes a #dc(10, stat: KEY) #WIL check. On a failure, its attack misses.]),
    ),
)

#let button_of_protection = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.41 (rare: a reaction; sewn back by a tailor during a Safe Rest).

house-rule: Rarity becomes a level (Rare: LVL 5); a magic item counts toward the magic
items you can carry (Adventure page, Items).
house-rule: Its charge comes back after a Safe Rest, with no tailor.
*/
