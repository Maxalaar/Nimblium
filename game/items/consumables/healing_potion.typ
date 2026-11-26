#import "/global.typ": *

#let item_data = (
    name: "Healing Potion",
    type: ("Item", "Consumable", "Potion"),
    family_icon: "potion.svg",
    charges: 1,
    slots: 2,
    blocks: (
      (kind: "active", cost: (actions(1), charge_cost(1)), effect: [You, or an adjacent creature, drink the potion and regain the #HP shown in Levels. Roll dice of the drinker's Hit Die size, without spending its Hit Dice, and add its #STR. A creature with no Hit Die rolls d8.]),
    ),
    levels: [
      *Level 1:* 2 Hit Dice + #STR.\
      *Level 5:* 3 Hit Dice + #times(2, STR).\
      *Level 10:* 4 Hit Dice + #times(3, STR).\
      *Level 15:* 5 Hit Dice + #times(4, STR).
    ],
)

#let healing_potion = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.36-37 (Healing Potion 2d4+4, Greater 3d6+6, Supreme 4d8+8; 1 action to
drink or to give to an adjacent willing creature; 2 potions per slot, p.29).

house-rule: One consumable card with 1 charge that comes back after a Safe Rest, taking 2
slots, instead of potions bought one by one (book: 2 potions per slot). It heals with the drinker's Hit Die and STR, like Catch Breath:
2 Hit Dice + STR at level 1, then 3 + 2×STR, 4 + 3×STR and 5 + 4×STR at levels 5, 10 and 15
(with a d8 and 2 STR: about 11, 18, 26 and 34; book: 2d4+4, 3d6+6, 4d8+8).
*/
