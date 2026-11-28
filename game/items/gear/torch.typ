#import "/global.typ": *

#let item_data = (
    name: "Torch",
    type: ("Item", "Gear"),
    family_icon: "items/gear/torch.svg",
    reach: 6,
    slots: 1,
    blocks: (
      (kind: "passive", effect: [While you hold it, it lights every space within Reach.]),
      weapon_properties.one_handed,
    ),
)

#let torch = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.36-37 (Torches & Lanterns: light up to 6 spaces, a free hand to hold it;
fighting in the dark imposes Blinded).

house-rule: Torch and lantern are one card, and it doesn't burn out (book: a torch lasts 1
dungeon, a lantern until the next Safe Rest).
*/
