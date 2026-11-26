#import "/global.typ": *

#let item_data = (
    name: "Weapon of Slaying",
    type: ("Item", "Magic", "Enchantment"),
    slots: 0,
    blocks: (
      (kind: "passive", name: "Enchantment", effect: [Put this card with one of your weapon cards. That weapon gains the effects below.]),
      (kind: "passive", effect: [#blank(40mm)\ Whenever you attack a creature of the type written above with that weapon, add the die shown in Levels to the damage.]),
    ),
    levels: [
      *Level 1:* 1d4.\
      *Level 5:* 1d6.\
      *Level 10:* 1d8.\
      *Level 15:* 1d10.
    ],
)

#let weapon_of_slaying = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.39 (+1d4 uncommon, +1d10 or more legendary; the GM writes the creature type).

house-rule: Rarity becomes a level (Uncommon: LVL 1); a magic item counts toward the magic
items you can carry (Adventure page, Items).
interpretation: "Those creatures may try to kill you first" is left to the GM.
*/
