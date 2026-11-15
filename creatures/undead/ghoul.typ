#import "../../global.typ": *

#let creature_data = (
    name: "Ghoul",
    type: ("Creature", "Undead"),
    blocks: (
        passive_abilities.undying,
        (kind: "active", cost: (actions(1),), name: "Sickening Claw", damage: "1d4+8", effect: [Whenever this attack deals damage, the target is #kw_dazed.]),
    ),
    reminder: (conditions.dazed,),
    hit_points: 20,
    level: "1",
)

#let ghoul = creat_creature(creature_data)
