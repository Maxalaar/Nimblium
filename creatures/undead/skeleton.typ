#import "../../global.typ": *

#let creature_data = (
    name: "Skeleton",
    type: ("Creature", "Undead"),
    blocks: (
        passive_abilities.undying,
        (kind: "active", cost: (actions(1),), name: "Grave Arrow", range: 8, damage: "1d4+3"),
    ),
    hit_points: 10,
    level: "1/3",
)

#let skeleton = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
