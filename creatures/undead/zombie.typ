#import "../../global.typ": *

#let creature_data = (
    name: "Zombie",
    type: ("Creature", "Undead"),
    blocks: (
        passive_abilities.undying,
        (kind: "active", cost: (actions(1),), name: "Crunch", damage: "1d4+4", effect: [Whenever this attack deals damage, the target is #kw_grappled.]),
    ),
    reminder: (conditions.grappled,),
    hit_points: 15,
    level: "1/2",
)

#let zombie = creat_creature(creature_data)
