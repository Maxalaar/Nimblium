#import "/global.typ": *

#let item_data = (
    name: "Hand Axe",
    type: ("Item", "Weapon", "Melee", "Axe"),
    family_icon: "throwing_axe.svg",
    damage: [1d6+#STR],
    reach: 1,
    range: 4,
    charges: 1,
    slots: 1,
    blocks: (
      weapon_damage("Slashing"),
      weapon_properties.one_handed,
      weapon_properties.thrown,
    ),
)

#let hand_axe = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.34-35 (Weapon Properties, Melee Weapons).
*/
