#import "/global.typ": *

#let item_data = (
    name: "Gnatbane Weapon",
    type: ("Item", "Magic", "Enchantment"),
    slots: 0,
    blocks: (
      (kind: "passive", name: "Enchantment", effect: [Put this card with one of your weapon cards. That weapon gains the effects below.]),
      (kind: "passive", effect: [That weapon's attacks against Small and Tiny creatures can't miss.]),
    ),
)

#let gnatbane_weapon = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.39 (uncommon).

house-rule: Rarity becomes a level (Uncommon: LVL 1); a magic item counts toward the magic
items you can carry (Adventure page, Items).
*/
