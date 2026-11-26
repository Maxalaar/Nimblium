#import "/global.typ": *

#let item_data = (
    name: "Mace",
    type: ("Item", "Weapon", "Melee", "Hammer"),
    family_icon: "mace.svg",
    damage: [1d6+#STR],
    reach: 1,
    slots: 1,
    blocks: (
      weapon_damage("Bludgeoning"),
    ),
)

#let mace = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.34-35 (Weapon Properties, Melee Weapons).
interpretation: The book's "Club/Mace" line: a club is a reflavored Mace.
*/
