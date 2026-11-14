#import "../../global.typ": *

#let creature_data = (
    name: "Ghoul",
    type: ("Creature", "Undead"),
    blocks: (
        passive_abilities.undying,
        (kind: "active", cost: (actions(1),), name: "Sickening Claw", effect: [1d4+8 damage. On damage: #kw_dazed.]),
    ),
    reminder: (conditions.dazed,),
    hit_points: 20,
    level: "1",
)

#let ghoul = creat_creature(creature_data)
