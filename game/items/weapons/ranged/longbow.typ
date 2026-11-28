#import "/global.typ": *

#let item_data = (
    name: "Longbow",
    type: ("Item", "Weapon", "Ranged", "Bow"),
    family_icon: "items/weapons/bow.svg",
    damage: [1d8+#DEX],
    range: 16,
    slots: 2,
    blocks: (
      weapon_damage("Piercing"),
      weapon_properties.two_handed,
      weapon_heavy(1),
    ),
)

#let longbow = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.34-35 (Weapon Properties, Ranged Weapons).
*/
