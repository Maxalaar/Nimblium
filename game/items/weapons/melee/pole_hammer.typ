#import "/global.typ": *

#let item_data = (
    name: "Pole Hammer",
    type: ("Item", "Weapon", "Melee", "Hammer"),
    family_icon: "hammer.svg",
    damage: [1d10+#STR],
    reach: 2,
    slots: 2,
    blocks: (
      weapon_damage("Bludgeoning"),
      weapon_properties.two_handed,
    ),
)

#let pole_hammer = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.34-35 (Weapon Properties, Melee Weapons).
*/
