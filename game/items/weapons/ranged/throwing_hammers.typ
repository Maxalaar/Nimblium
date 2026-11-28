#import "/global.typ": *

#let item_data = (
    name: "Throwing Hammers",
    type: ("Item", "Weapon", "Ranged", "Thrown"),
    family_icon: "items/weapons/throwing_hammer.svg",
    damage: [1d8+#STR],
    range: 4,
    charges: 3,
    slots: 2,
    blocks: (
      weapon_damage("Bludgeoning"),
      weapon_properties.one_handed,
      weapon_properties.thrown,
    ),
)

#let throwing_hammers = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.34-35 (Weapon Properties, Ranged Weapons).
*/
