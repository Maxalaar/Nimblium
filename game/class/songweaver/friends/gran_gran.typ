#import "/global.typ": *
#import "/game/class/songweaver/songweaver_keywords.typ": old_friend

#let creature_data = (
    name: "Gran Gran",
    type: ("Creature", "Songweaver", "Friend"),
    blocks: (
        old_friend,
        (kind: "narrative", limitation: per_safe_rest(1), name: "Warm Pastries", effect: [During a rest, this creature bakes #WIL+#INT pastries, #WIL and #INT being its controller's. A creature that eats one within 10 minutes of its baking recovers 1 mana, 1 Wound, or its Vitality #HP.]),
    ),
    hit_points: [#LVL+5],
)

#let gran_gran = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: A creature that follows the Songweaver instead of being summoned with a song, with LVL+5
HP and no attack (user ruling 2026-11-26). Her pastries keep the book's limit of once per Safe Rest.

house-rule: A pastry gives Vitality + STR HP instead of 1 Hit Die; there are no Hit Dice.
*/
