#import "/global.typ": *

#let item_data = (
    name: "Shield",
    type: ("Item", "Shield"),
    family_icon: "shield.svg",
    defense: "—",
    slots: 1,
    blocks: (
      shield_bonus,
      weapon_properties.one_handed,
    ),
    levels: armor_levels((2, 4, 6, 8)),
)

#let shield = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.33, Shields table (Wooden Buckler 2, Iron Shield 4, Tower Shield 6, Dragon Shield 8; STR requirements dropped).

house-rule: One card per armor category (and one shield) whose bonus grows with your level,
instead of 4 items bought with gold: the book's 4 tiers become levels 1, 5, 10 and 15. Defense
is DEX + armor + shield. Magic items bring the rest of the loot.
*/
