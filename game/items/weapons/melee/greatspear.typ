#import "/global.typ": *

#let item_data = (
    name: "Greatspear",
    type: ("Item", "Weapon", "Melee", "Polearm"),
    family_icon: "spear.svg",
    damage: [1d10+#STR],
    reach: 2,
    slots: 2,
    blocks: (
      weapon_damage("Piercing"),
      weapon_properties.two_handed,
    ),
)

#let greatspear = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.34-35 (Weapon Properties, Melee Weapons).
changelog: The old Spear (1d10+STR, 2-handed, Reach 2) is now the Greatspear.
*/
