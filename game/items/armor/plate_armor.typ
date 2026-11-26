#import "/global.typ": *

#let item_data = (
    name: "Plate Armor",
    type: ("Item", "Armor", "Plate"),
    family_icon: "plate.svg",
    defense: "—",
    slots: 2,
    blocks: (
      armor_bonus,
      armor_no_dex,
      armor_heavy(3),
    ),
    levels: armor_levels((10, 14, 18, 22)),
)

#let plate_armor = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.33, Plate table (Rusty Plate 10, Half Plate 14, Full Plate 18, Adamantine Plate 22, the changelog's name for Mithril; no DEX; Req. 3 STR).

house-rule: One card per armor category (and one shield) whose bonus grows with your level,
instead of 4 items bought with gold: the book's 4 tiers become levels 1, 5, 10 and 15. Defense
is DEX + armor + shield. Magic items bring the rest of the loot.
*/
