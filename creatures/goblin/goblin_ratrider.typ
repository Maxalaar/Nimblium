#import "../../global.typ": *

#let creature_data = (
    name: "Goblin Ratrider",
    type: (
        "Creature",
        "Goblin",
    ),
    active: (
        [
            *Charge:* If you move at least 4 spaces in a straight line, attack with advantage once.
        ],
    ),
    ability: (
        [
            *Bite & Stab:* 2 attacks. 1d6+2 damage. On crit: #kw_prone.
        ],
    ),
    reminder: (conditions.prone,),
    hit_points: 30,
    speed: 10,
    level: "2",
)

#let goblin_ratrider = creat_creature(creature_data)