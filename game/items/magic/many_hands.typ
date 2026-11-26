#import "/global.typ": *

#let item_data = (
    name: "Many Hands",
    type: ("Item", "Magic"),
    slots: 0,
    blocks: (
      (kind: "passive", effect: [While you wear it, you have the extra hands shown in Levels. They don't give you more actions.]),
    ),
    levels: [
      *Level 1:* 1 extra hand.\
      *Level 5:* 2 extra hands.\
      *Level 10:* 3 extra hands.\
      *Level 15:* 4 extra hands.
    ],
)

#let many_hands = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.39 (Weapon of Many Hands: 1 extra hand uncommon, 4 legendary; Harbinger
& Sovereign, Abyssal's Claim: 2 glaives giving 4 extra hands).

house-rule: A worn item, not a weapon; Harbinger & Sovereign is folded into it (level 15).

house-rule: Rarity becomes a level (Uncommon: LVL 1); a magic item counts toward the magic
items you can carry (Adventure page, Items).
*/
