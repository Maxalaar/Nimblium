#import "/global.typ": *
#import "/game/class/songweaver/songweaver_keywords.typ": old_friend

#let creature_data = (
    name: "Stompy",
    type: ("Creature", "Songweaver", "Friend"),
    blocks: (
        old_friend,
        (kind: "active", cost: (actions(1),), name: "Slam", reach: 2, damage: [1d6+#LVL]),
        (kind: "active", cost: (actions(2),), limitation: per_safe_rest(1), name: "Stomp", effect: [This creature moves 6 spaces in a straight line. Each creature in its path takes #LVL+10 damage.]),
    ),
    hit_points: [#times(5, LVL)],
    size: "Huge",
    str: [#LVL/4+2],
)

#let stompy = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Stompy is a companion that follows the Songweaver, like the Shepherd's Spirit
Companion: 5×LVL HP, a Slam attack, and the Stomp once per Safe Rest and STR LVL/4+2 (user ruling
2026-11-26). The book summons him for 1 round (2 actions, 1/Safe Rest): a DC 10 Influence
check sends him 6 spaces in a chosen direction, or toward you on a failure, for LVL + the
check result damage, and any creature within 6 spaces may use the Stomp again. The check and
the reuse by other creatures are removed; LVL+10 is about the book's average.
*/
