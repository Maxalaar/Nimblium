#import "/global.typ": *

#let item_data = (
    name: "Crossbow",
    type: ("Item", "Weapon", "Ranged", "Crossbow"),
    family_icon: "crossbow.svg",
    damage: [4d4+#DEX],
    range: 8,
    slots: 2,
    blocks: (
      weapon_damage("Piercing"),
      weapon_properties.two_handed,
      weapon_load(1),
    ),
)

#let crossbow = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.34-35 (Weapon Properties, Ranged Weapons).
*/
