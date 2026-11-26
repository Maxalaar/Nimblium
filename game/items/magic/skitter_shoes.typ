#import "/global.typ": *

#let item_data = (
    name: "Skitter Shoes",
    type: ("Item", "Magic"),
    level: 5,
    slots: 1,
    blocks: (
      (kind: "passive", effect: [While you wear them, you can walk on walls and ceilings at half your #speed. If you end your turn on one, make a #dc(10) #STR check. On a failure, you fall and are #kw_prone.]),
    ),
    reminder: (conditions.prone,),
)

#let skitter_shoes = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.41 (rare).

house-rule: Rarity becomes a level (Rare: LVL 5); a magic item counts toward the magic
items you can carry (Adventure page, Items).
*/
