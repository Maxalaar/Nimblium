#import "/global.typ": *

#let item_data = (
    name: "Staff",
    type: ("Item", "Weapon", "Melee", "Staff"),
    family_icon: "items/weapons/staff.svg",
    damage: [1d8+#STR],
    reach: 1,
    slots: 2,
    blocks: (
      weapon_damage("Bludgeoning"),
      weapon_properties.two_handed,
    ),
)

#let staff = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.34-35 (Weapon Properties, Melee Weapons).
*/
