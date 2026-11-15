#import "../../global.typ": *

#let creature_data = (
    name: "Specter",
    type: ("Creature", "Undead"),
    blocks: (
        passive_abilities.undying,
        passive_abilities.flying,
        (kind: "active", cost: (actions(1),), name: "Deathly Touch", damage: "1d4", effect: [Whenever this attack deals damage, the target drops to 0 #HP.]),
    ),
    reminder: (keywords.flying,),
    hit_points: 30,
    level: "3",
)

#let specter = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
