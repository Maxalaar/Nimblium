#import "../../global.typ": *

#let creature_data = (
    name: "Specter",
    type: ("Creature", "Undead"),
    blocks: (
        passive_abilities.undying,
        (kind: "active", cost: (actions(1),), name: "Deathly Touch", effect: [1d4 damage. On damage: set #HP to 0.]),
    ),
    hit_points: 30,
    level: "3",
)

#let specter = creat_creature(creature_data)
