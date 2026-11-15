#import "../../global.typ": *

#let creature_data = (
    name: "Goblin",
    type: ("Creature", "Goblin"),
    blocks: (
        (kind: "active", cost: (actions(1),), name: "Stab", damage: "1d6+2"),
        (kind: "active", cost: (actions(1),), name: "Shoot", range: 8, damage: "1d6+2"),
    ),
    hit_points: 15,
    level: "1/2",
)

#let goblin = creat_creature(creature_data)
