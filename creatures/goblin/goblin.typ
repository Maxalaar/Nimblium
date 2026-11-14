#import "../../global.typ": *

#let creature_data = (
    name: "Goblin",
    type: ("Creature", "Goblin"),
    blocks: (
        (kind: "active", cost: (actions(1),), name: "Stab", effect: [1d6+2 damage.]),
        (kind: "active", cost: (actions(1),), name: "Shoot", effect: [Range 8, 1d6+2 damage.]),
    ),
    hit_points: 15,
    level: "1/2",
)

#let goblin = creat_creature(creature_data)
