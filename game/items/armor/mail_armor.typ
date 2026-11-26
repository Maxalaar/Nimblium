#import "/global.typ": *

#let item_data = (
    name: "Mail Armor",
    type: ("Item", "Armor", "Mail"),
    family_icon: "mail.svg",
    defense: [+6],
    slots: 2,
    blocks: (
      armor_bonus,
      armor_max_dex(2),
      armor_heavy(2),
    ),
    high_Levels: armor_levels((9, 12, 15)),
)

#let mail_armor = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.33, Mail table (Rusty Mail 6, Chain Shirt 9, Scale Mail 12, Dragonscale 15; DEX max 2; Req. 2 STR).

house-rule: One card per armor category (and one shield) whose bonus grows with your level,
instead of 4 items bought with gold: the book's 4 tiers become levels 1, 5, 10 and 15. Defense
is DEX + armor + shield. Magic items bring the rest of the loot.
*/
