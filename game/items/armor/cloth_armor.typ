#import "/global.typ": *

#let item_data = (
    name: "Cloth Armor",
    type: ("Item", "Armor", "Cloth"),
    family_icon: "cloth.svg",
    defense: [+2],
    slots: 2,
    blocks: (
      armor_bonus,
    ),
    high_Levels: armor_levels((3, 4, 5)),
)

#let cloth_armor = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.33, Cloth table (Adventurer's Garb 2, Minor, Major and Epic Enchantment 3 to 5).

house-rule: One card per armor category (and one shield) whose bonus grows with your level,
instead of 4 items bought with gold: the book's 4 tiers become levels 1, 5, 10 and 15. Defense
is DEX + armor + shield. Magic items bring the rest of the loot.
*/
