#import "../../global.typ": *

#let creature_data = (
    name: "Skeleton",
    type: ("Creature", "Undead"),
    blocks: (
        passive_abilities.undying,
        (kind: "active", cost: (actions(1),), name: "Grave Arrow", effect: [1d4+3 damage.]),
    ),
    hit_points: 10,
    level: "1/3",
)

#let skeleton = creat_creature(creature_data)
