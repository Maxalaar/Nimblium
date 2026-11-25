#import "/global.typ": *

#let creature_data = (
    name: "Giant Zombie",
    type: ("Creature", "Undead"),
    blocks: (
        passive_abilities.undying,
        (kind: "active", cost: (actions(1),), name: "Decaying Swipe", attacks: 2, damage: "1d4+10", effect: [Whenever this attack deals damage, the target suffers #kw_knockback X, where X is this attack's #primary_die.]),
    ),
    reminder: (keywords.knockback,),
    hit_points: 73,
    size: "Huge",
    level: "8",
)

#let giant_zombie = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
