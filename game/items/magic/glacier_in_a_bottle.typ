#import "/global.typ": *

#let item_data = (
    name: "Glacier in a Bottle",
    type: ("Item", "Magic"),
    level: 5,
    charges: 1,
    slots: 1,
    blocks: (
      (kind: "active", cost: (actions(1), charge_cost(1)), effect: [Choose any number of connected spaces within 6 spaces. For 1 hour, they are #kw_difficult_terrain.]),
    ),
    reminder: (keywords.difficult_terrain,),
)

#let glacier_in_a_bottle = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Game Master's Guide p.19 (1/Safe Rest).

house-rule: Rarity becomes a level (Rare: LVL 5); a magic item counts toward the magic
items you can carry (Adventure page, Items).
house-rule: The ice is Difficult Terrain (book: solid ice 2 spaces high that fills the spaces;
extreme heat or damage may make it fail).
*/
