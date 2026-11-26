#import "/global.typ": *

#let item_data = (
    name: "Healing Potion",
    type: ("Item", "Consumable", "Potion"),
    family_icon: "potion.svg",
    charges: 2,
    slots: 1,
    blocks: (
      (kind: "active", cost: (actions(1), charge_cost(1)), effect: [You, or an adjacent creature, drink the potion and regain the #HP shown in Levels.]),
    ),
    levels: [
      *Level 1:* 2d4+4 #HP.\
      *Level 5:* 3d6+6 #HP.\
      *Level 10:* 4d8+8 #HP.
    ],
)

#let healing_potion = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.36-37 (Healing Potion 2d4+4, Greater 3d6+6, Supreme 4d8+8; 1 action to
drink or to give to an adjacent willing creature; 2 potions per slot, p.29).

house-rule: One consumable card with 2 charges that come back after a Safe Rest, instead of
potions bought one by one. The Greater and Supreme potions become levels 5 and 10.
*/
