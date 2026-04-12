#import "../../global.typ": *

#let creature_data = (
    name: "Skeleton",
    type: (
        "Creature",
        "Undead",
    ),
    passive: (
        passive_abilities.undying,
    ),
    active: (
        [
            *Grave Arrow:* 1d4+3 damage.
        ],
    ),
    hit_points: 10,
    level: "1/3",
)

#let skeleton = creat_creature(creature_data)