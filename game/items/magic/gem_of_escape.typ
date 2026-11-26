#import "/global.typ": *

#let item_data = (
    name: "Gem of Escape",
    type: ("Item", "Magic"),
    level: 5,
    charges: 1,
    slots: 1,
    blocks: (
      (kind: "active", cost: (actions(1), charge_cost(1)), effect: [Each willing creature bound to this gem teleports next to its twin gem. Any number of creatures can be bound to it.]),
    ),
)

#let gem_of_escape = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Game Master's Guide p.19 (crushed to use it).

house-rule: No item is destroyed: its charge comes back after a Safe Rest.

house-rule: Rarity becomes a level (Rare: LVL 5); a magic item counts toward the magic
items you can carry (Adventure page, Items).
*/
