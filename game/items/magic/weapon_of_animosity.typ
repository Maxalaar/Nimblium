#import "/global.typ": *

#let item_data = (
    name: "Weapon of Animosity",
    type: ("Item", "Magic", "Enchantment"),
    slots: 0,
    blocks: (
      (kind: "passive", name: "Enchantment", effect: [Put this card with one of your weapon cards. That weapon gains the effects below.]),
      (kind: "passive", effect: [Whenever you attack with that weapon, also roll the die shown in Levels. On a hit, the target takes that much more damage. On a miss, you take it.]),
    ),
    levels: [
      *Level 1:* 1d4.\
      *Level 5:* 1d6.\
      *Level 10:* 1d8.\
      *Level 15:* 1d10.\
      *Level 20:* 1d12.
    ],
)

#let weapon_of_animosity = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.39-41 (1d4 uncommon, 1d10 or more legendary; Vindication, a legendary Weapon of Animosity, +1d12).

house-rule: Rarity becomes a level (Uncommon: LVL 1); a magic item counts toward the magic
items you can carry (Adventure page, Items).
interpretation: Vindication is this card at level 20 (1d12), not a card of its own.
*/
