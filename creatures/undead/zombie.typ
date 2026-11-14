#import "../../global.typ": *

#let creature_data = (
    name: "Zombie",
    type: ("Creature", "Undead"),
    blocks: (
        passive_abilities.undying,
        (kind: "active", cost: (actions(1),), name: "Crunch", effect: [1d4+4 damage. On damage: #kw_grappled.]),
    ),
    reminder: (conditions.grappled,),
    hit_points: 15,
    level: "1/2",
)

#let zombie = creat_creature(creature_data)
