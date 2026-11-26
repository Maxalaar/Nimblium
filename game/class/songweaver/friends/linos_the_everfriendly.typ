#import "/global.typ": *
#import "/game/class/songweaver/songweaver_keywords.typ": old_friend

#let creature_data = (
    name: "Linos, the Everfriendly",
    type: ("Creature", "Songweaver", "Friend"),
    blocks: (
        old_friend,
        passive_abilities.flying,
        (kind: "passive", name: "Mount", effect: [Its controller and 1 ally can ride it. Outside combat, it carries the whole party wherever they need to go.]),
    ),
    reminder: (keywords.flying, conditions.riding),
    hit_points: [#times(5, LVL)],
    speed: 12,
    size: "Huge",
)

#let linos_the_everfriendly = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: A creature that follows the Songweaver instead of being summoned with a song
(user ruling 2026-11-26): a Huge flying mount with 5×LVL HP and speed 12, usable in combat.
The book only says a legendary friendly flying creature takes the party wherever it needs to
go, and may ask for a lot of food as payment.
*/
