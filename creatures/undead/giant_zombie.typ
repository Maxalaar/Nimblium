#import "../../global.typ": *

#let creature_data = (
    name: "Giant Zombie",
    type: ("Creature", "Undead"),
    blocks: (
        passive_abilities.undying,
        (kind: "active", cost: (actions(1),), name: "Decaying Swipe", effect: [2 attacks. 1d4+10 damage. On damage: knockback #primary_die spaces.]),
    ),
    hit_points: 75,
    level: "8",
)

#let giant_zombie = creat_creature(creature_data)
