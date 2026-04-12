#import "../../global.typ": *

#let creature_data = (
    name: "Goblin Ratrider",
    type: (
        "Creature",
        "Goblin",
    ),
    passive: (
        [
            *Charge:* If you move at least 4 spaces in straight line, attack with advantage once.
        ],
    ),
    ability: (
        [
            *Bite & Stab:* 2 attaques. 1d6+2 damage. On crit: Prone.
        ],
    ),
    reminder: (conditions.prone,),
    hit_points: 30,
    speed: 10,
    level: "2",
)

#let goblin_ratrider = creat_creature(creature_data)