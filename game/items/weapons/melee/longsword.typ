#import "/global.typ": *

#let item_data = (
    name: "Longsword",
    type: ("Item", "Weapon", "Melee", "Blade"),
    family_icon: "items/weapons/sword.svg",
    damage: [1d8+#STR],
    reach: 1,
    slots: 2,
    blocks: (
      weapon_damage("Slashing"),
      weapon_two_handed_unless(2),
    ),
)

#let longsword = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.34-35 (Weapon Properties, Melee Weapons).
*/
