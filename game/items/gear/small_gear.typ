#import "/global.typ": *

#let item_data = (
    name: "Small Gear",
    type: ("Item", "Gear"),
    family_icon: "items/gear/gear.svg",
    slots: 1,
    blocks: (
      (kind: "narrative", effect: [#blank(40mm)\ #blank(40mm)]),
    ),
    reminder: ([*For the GM:* when a hero asks for an everyday item, write it here. 1 slot, such as a rope, a crowbar, lock picks, a lamp oil flask, camping supplies. Small related items can share one card.],),
)

#let small_gear = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.29 (inventory slots: small related items share 1 slot, bulky items take
2) and p.37 (Misc Adventuring Equipment).

house-rule: Everyday gear has no card of its own: the GM writes it on a blank card of 1, 2 or
3 slots. It has no rules beyond what it obviously does.
*/
