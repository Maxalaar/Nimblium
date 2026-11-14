#import "../../global.typ": *

#let creature_data = (
    name: "Bugbear Chieftain",
    type: ("Creature", "Goblin"),
    blocks: (
        (kind: "active", cost: (actions(1),), name: "Cleave", effect: [Reach 2, 2d6+10 damage. It may also deal this damage to a second creature within Reach.]),
    ),
    hit_points: 40,
    defense: 10,
    level: "4",
)

#let bugbear_chieftain = creat_creature(creature_data)
