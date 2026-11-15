#import "../../global.typ": *

#let creature_data = (
    name: "Bugbear",
    type: ("Creature", "Goblin"),
    blocks: (
        (kind: "active", cost: (actions(1),), name: "Cleave", damage: "2d6+4"),
        (kind: "active", cost: (actions(1),), name: "Javelin", range: 8, damage: "1d6+2"),
    ),
    hit_points: 30,
    defense: 10,
    level: "2",
)

#let bugbear = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
