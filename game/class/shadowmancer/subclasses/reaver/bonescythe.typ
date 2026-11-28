#import "/global.typ": *

#let item_data = (
    name: "Bonescythe",
    type: ("Item", "Weapon", "Melee", "Blade"),
    family_icon: "items/weapons/sickle.svg",
    damage: "—",
    reach: 2,
    slots: 0,
    blocks: (
      (kind: "passive", name: "Slashing and Necrotic", effect: [Its dice deal slashing damage, and its #DEX bonus necrotic damage.]),
      weapon_properties.two_handed,
      (kind: "passive", name: "Ephemeral", effect: [It shatters when it hits, and when combat ends.]),
    ),
    levels: [
      *Level 3:* 2d12+#times(2, DEX).\
      *Level 5:* 3d12+#times(3, DEX).\
      *Level 10:* 4d12+#times(4, DEX).\
      *Level 15:* 5d12+#times(5, DEX).\
      *Level 20:* 6d12+#times(6, DEX).
    ],
)

#let bonescythe = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.78 (Bonescythe: an action to summon it, 2d12 slashing + DEX necrotic damage to
each die, Reach 2, it shatters after you hit with it or when combat ends; High Levels: 1 more
die every 5 levels).

interpretation: A weapon card; Hollow One summons it. The DEX added to each die is
written in its damage: 2d12+2×DEX. It is summoned, so it takes no slot. The book doesn't say how
many hands it takes: a scythe takes 2.
*/
