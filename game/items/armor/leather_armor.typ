#import "/global.typ": *

#let item_data = (
    name: "Leather Armor",
    type: ("Item", "Armor", "Leather"),
    family_icon: "items/armor/leather.svg",
    defense: "—",
    slots: 2,
    blocks: (
      armor_bonus,
    ),
    levels: armor_levels((3, 4, 5, 6)),
)

#let leather_armor = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.33, Leather table (Cheap Hides 3, Ox Hide 4, Hard Leather 5, Wyrmhide 6; Req. 1 STR dropped).

house-rule: One card per armor category (and one shield) whose bonus grows with your level,
instead of 4 items bought with gold: the book's 4 tiers become levels 1, 5, 10 and 15. Defense
is DEX + armor + shield. Magic items bring the rest of the loot.
*/
