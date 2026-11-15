#import "../../global.typ": *

#let creature_data = (
    name: "Bugbear Chieftain",
    type: ("Creature", "Goblin"),
    blocks: (
        (kind: "active", cost: (actions(1),), name: "Cleave", reach: 2, damage: "2d6+10", effect: [This attack may also deal its damage to a second creature within Reach.]),
    ),
    hit_points: 40,
    defense: 10,
    level: "4",
)

#let bugbear_chieftain = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
