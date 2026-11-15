#import "../../global.typ": *

#let creature_data = (
    name: "Mummy",
    type: ("Creature", "Undead"),
    blocks: (
        passive_abilities.undying,
        (kind: "active", cost: (actions(1),), name: "Slam", attacks: 2, damage: "1d4+8", effect: [Whenever this attack crits, the target is #kw_dazed.]),
    ),
    reminder: (conditions.dazed,),
    hit_points: 55,
    level: "6",
)

#let mummy = creat_creature(creature_data)
