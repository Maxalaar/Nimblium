#import "../../global.typ": *

#let creature_data = (
    name: "Goblin",
    type: (
        "Creature",
        "Goblin",
    ),
    active: (
        [
            *Stab:* 1d6 damage.\
            or\
            *Shoot:* Range 8, 1d6 damage.
        ],
    ),
    hit_points: 15,
    level: "1/3",
)

#let goblin = creat_creature(creature_data)