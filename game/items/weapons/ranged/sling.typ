#import "/global.typ": *

#let item_data = (
    name: "Sling",
    type: ("Item", "Weapon", "Ranged", "Sling"),
    family_icon: "sling.svg",
    damage: [1d4+#DEX],
    range: 12,
    slots: 2,
    blocks: (
      weapon_damage("Bludgeoning"),
      weapon_properties.two_handed,
      weapon_properties.vicious,
    ),
)

#let sling = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.34-35 (Weapon Properties, Ranged Weapons).
interpretation: The book makes the Sling 2-handed, and a 2-handed weapon takes 2 slots.
*/
