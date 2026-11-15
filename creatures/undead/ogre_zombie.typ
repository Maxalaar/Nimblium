#import "../../global.typ": *

#let creature_data = (
    name: "Ogre Zombie",
    type: ("Creature", "Undead"),
    blocks: (
        passive_abilities.undying,
        (kind: "active", cost: (actions(1),), name: "Greatclub", attacks: 2, damage: "1d4+8", effect: [Whenever this attack crits, the target is #kw_prone.]),
    ),
    reminder: (conditions.prone,),
    hit_points: 45,
    level: "5",
)

#let ogre_zombie = creat_creature(creature_data)
