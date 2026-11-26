#import "/global.typ": *

#let item_data = (
    name: "Trinket of Ill Omen",
    type: ("Item", "Magic"),
    level: 5,
    slots: 1,
    blocks: (
      (kind: "passive", effect: [While you carry it, the DC of your effects is 1 higher, and your checks against other creatures' effects have −1.]),
    ),
)

#let trinket_of_ill_omen = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.40 (rare: -1 to saves you roll, +1 to your save DC).

house-rule: Rarity becomes a level (Rare: LVL 5); a magic item counts toward the magic
items you can carry (Adventure page, Items).
house-rule: There are no saves: -1 to your checks against other creatures' effects, +1 to the DC of yours.
*/
