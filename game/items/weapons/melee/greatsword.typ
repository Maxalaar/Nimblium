#import "/global.typ": *

#let item_data = (
    name: "Greatsword",
    type: ("Item", "Weapon", "Melee", "Blade"),
    family_icon: "items/weapons/sword.svg",
    damage: [1d12+#STR],
    reach: 1,
    slots: 2,
    blocks: (
      weapon_damage("Slashing or Piercing"),
      weapon_properties.two_handed,
      weapon_heavy(2),
    ),
)

#let greatsword = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.34-35 (Weapon Properties, Melee Weapons).
changelog: 1d12+STR (was 3d4+STR).
*/
