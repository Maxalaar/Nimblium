#import "/global.typ": *

#let item_data = (
    name: "Healing Potion",
    type: ("Item", "Potion"),
    family_icon: "items/gear/potion.svg",
    charges: 1,
    slots: 2,
    blocks: (
      (kind: "active", cost: (actions(1), charge_cost(1)), effect: [You, or an adjacent creature, drink the potion and regain the #HP shown in Levels, with the drinker's Vitality. A creature with no Vitality counts 5.]),
    ),
    levels: [
      *Level 1:* #times(2, "Vitality").\
      *Level 5:* #times(3, "Vitality").\
      *Level 10:* #times(4, "Vitality").\
      *Level 15:* #times(5, "Vitality").
    ],
)

#let healing_potion = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.36-37 (Healing Potion 2d4+4, Greater 3d6+6, Supreme 4d8+8; 1 action to
drink or to give to an adjacent willing creature; 2 potions per slot, p.29).

house-rule: One card with 1 charge that comes back after a Safe Rest, taking 2
slots, instead of potions bought one by one (book: 2 potions per slot). It heals with the drinker's Vitality and STR: 2, 3, 4 then 5 × (Vitality + STR) at levels 1,
5, 10 and 15 (book: 2d4+4, 3d6+6, 4d8+8).
*/
