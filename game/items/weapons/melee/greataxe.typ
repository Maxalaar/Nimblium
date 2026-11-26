#import "/global.typ": *

#let item_data = (
    name: "Greataxe",
    type: ("Item", "Weapon", "Melee", "Axe"),
    family_icon: "axe.svg",
    damage: [2d6+#STR],
    reach: 1,
    slots: 2,
    blocks: (
      weapon_damage("Slashing"),
      weapon_properties.two_handed,
      weapon_heavy(2),
    ),
)

#let greataxe = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.34-35 (Weapon Properties, Melee Weapons).
*/
