#import "../../global.typ": *

#let creature_data = (
    name: "Bugbear",
    type: (
        "Creature",
        "Goblin",
    ),
    active: (
        [
            *Cleave:* 2d6+4 damage.\
            or\
            *Javelin:* Range 8, 1d6+2 damage.
        ],
    ),
    hit_points: 30,
    armor: "M",
    level: "2",
)

#let bugbear = creat_creature(creature_data)