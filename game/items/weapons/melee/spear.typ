#import "/global.typ": *

#let item_data = (
    name: "Spear",
    type: ("Item", "Weapon", "Melee", "Polearm"),
    family_icon: "spear.svg",
    damage: [1d8+#STR],
    reach: 2,
    slots: 2,
    blocks: (
      weapon_damage("Piercing"),
      weapon_two_handed_unless(2),
    ),
)

#let spear = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.34-35 (Weapon Properties, Melee Weapons).
interpretation: The 2026-10-02 changelog adds a Spear that can be wielded one-handed with
STR 2 and renames the old Spear (1d10, Reach 2) Greatspear, without giving the new Spear's
damage. Its 1d8+STR and Reach 2 are a guess, between the Longsword and the Greatspear.
*/
