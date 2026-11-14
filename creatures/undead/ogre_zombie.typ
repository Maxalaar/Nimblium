#import "../../global.typ": *

#let creature_data = (
    name: "Ogre Zombie",
    type: ("Creature", "Undead"),
    blocks: (
        passive_abilities.undying,
        (kind: "active", cost: (actions(1),), name: "Greatclub", effect: [2 attacks. 1d4+8 damage. On crit: #kw_prone.]),
    ),
    reminder: (conditions.prone,),
    hit_points: 45,
    level: "5",
)

#let ogre_zombie = creat_creature(creature_data)
