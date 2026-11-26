#import "/global.typ": *

#let item_data = (
    name: "Sickle",
    type: ("Item", "Weapon", "Melee", "Blade"),
    family_icon: "sickle.svg",
    damage: [1d4+#DEX],
    reach: 1,
    slots: 1,
    blocks: (
      weapon_damage("Slashing"),
      weapon_properties.one_handed,
      weapon_properties.vicious,
    ),
)

#let sickle = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.34-35 (Weapon Properties, Melee Weapons).
*/
