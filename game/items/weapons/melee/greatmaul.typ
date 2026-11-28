#import "/global.typ": *

#let item_data = (
    name: "Greatmaul",
    type: ("Item", "Weapon", "Melee", "Hammer"),
    family_icon: "items/weapons/hammer.svg",
    damage: [3d4+#STR],
    reach: 1,
    slots: 2,
    blocks: (
      weapon_damage("Bludgeoning"),
      weapon_properties.two_handed,
      weapon_heavy(2),
    ),
)

#let greatmaul = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.34-35 (Weapon Properties, Melee Weapons).
changelog: 3d4+STR (was 1d12+STR).
*/
