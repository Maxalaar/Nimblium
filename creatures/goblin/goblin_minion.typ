#import "../../global.typ": *

#let creature_data = (
    name: "Goblin Minion",
    type: (
        "Creature",
        "Goblin",
        "Minion",
    ),
    ability: (
        [
            *Stab:* 1d6 damage.
        ],
    ),
    level: "1/4",
)

#let goblin_minion = creat_creature(creature_data)

#goblin_minion