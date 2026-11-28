#import "/global.typ": *

#let item_data = (
    name: "Short Sword",
    type: ("Item", "Weapon", "Melee", "Blade"),
    family_icon: "items/weapons/sword.svg",
    damage: [1d6+#DEX],
    reach: 1,
    slots: 1,
    blocks: (
      weapon_damage("Piercing"),
      weapon_properties.one_handed,
      weapon_properties.light,
    ),
)

#let short_sword = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.34-35 (Weapon Properties, Melee Weapons).
*/
