#import "/global.typ": *

#let creature_data = (
    name: "Wraith",
    type: ("Creature", "Undead"),
    blocks: (
        passive_abilities.undying,
        passive_abilities.flying,
        (kind: "active", cost: (actions(1),), name: "Soul Rend", attacks: 2, range: 8, damage: "1d4+10", effect: [Whenever this attack deals damage, the target gains 1 Wound.]),
    ),
    reminder: (keywords.flying,),
    hit_points: 94,
    level: "10",
)

#let wraith = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
