#import "/global.typ": *

#let item_data = (
    name: "Ball of Spiders",
    type: ("Item", "Magic"),
    charges: 1,
    slots: 1,
    blocks: (
      (kind: "active", cost: (actions(1), charge_cost(1)), effect: [Choose a #times(2, 2) area within 6 spaces. Each creature in it makes a #dc(10, stat: KEY) #WIL check. On a failure, it is #kw_frightened until the end of its next turn.]),
    ),
    reminder: (conditions.frightened,),
)

#let ball_of_spiders = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.41 (uncommon: the ball reforms at the next Safe Rest).

house-rule: Rarity becomes a level (Uncommon: LVL 1); a magic item counts toward the magic
items you can carry (Adventure page, Items).
*/
