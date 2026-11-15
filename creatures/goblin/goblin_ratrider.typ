#import "../../global.typ": *

#let creature_data = (
    name: "Goblin Ratrider",
    type: ("Creature", "Goblin"),
    blocks: (
        (kind: "passive", name: "Charge", effect: [If this creature moves at least 4 spaces in a straight line, its next attack this turn has advantage.]),
        (kind: "active", cost: (actions(1),), name: "Bite & Stab", attacks: 2, damage: "1d6+2", effect: [Whenever this attack crits, the target is #kw_prone.]),
    ),
    reminder: (conditions.prone,),
    hit_points: 30,
    speed: 10,
    level: "2",
)

#let goblin_ratrider = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
