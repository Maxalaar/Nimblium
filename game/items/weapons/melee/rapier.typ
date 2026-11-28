#import "/global.typ": *

#let item_data = (
    name: "Rapier",
    type: ("Item", "Weapon", "Melee", "Blade"),
    family_icon: "items/weapons/rapier.svg",
    damage: [2d4+#DEX],
    reach: 1,
    slots: 1,
    blocks: (
      weapon_damage("Piercing"),
      weapon_properties.one_handed,
    ),
)

#let rapier = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.34-35 (Weapon Properties, Melee Weapons).
*/
