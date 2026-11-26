#import "/global.typ": *

#let item_data = (
    name: "Bulky Gear",
    type: ("Item", "Gear"),
    family_icon: "gear.svg",
    slots: 2,
    blocks: (
      (kind: "narrative", effect: [#blank(40mm)\ #blank(40mm)]),
    ),
    reminder: ([*For the GM:* when a hero asks for an everyday item, write it here. 2 slots, such as a shovel, a chain, a hunting trap, a large sack. Small related items can share one card.],),
)

#let bulky_gear = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.29 (inventory slots: small related items share 1 slot, bulky items take
2) and p.37 (Misc Adventuring Equipment).

house-rule: Everyday gear has no card of its own: the GM writes it on a blank card of 1, 2 or
3 slots. It has no rules beyond what it obviously does.
*/
