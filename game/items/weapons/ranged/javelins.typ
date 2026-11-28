#import "/global.typ": *

#let item_data = (
    name: "Javelins",
    type: ("Item", "Weapon", "Ranged", "Thrown"),
    family_icon: "items/weapons/javelin.svg",
    damage: [1d6+#STR],
    range: 8,
    charges: 4,
    slots: 2,
    blocks: (
      weapon_damage("Piercing"),
      weapon_properties.one_handed,
      weapon_properties.thrown,
    ),
)

#let javelins = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.34-35 (Weapon Properties, Ranged Weapons).
*/
