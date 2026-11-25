#import "/global.typ": *

#let creature_data = (
    name: "Mummy",
    type: ("Creature", "Undead"),
    blocks: (
        passive_abilities.undying,
        (kind: "active", cost: (actions(1),), name: "Slam", attacks: 2, damage: "1d4+8", effect: [Whenever this attack deals damage, the target is #kw_dazed.]),
    ),
    reminder: (conditions.dazed,),
    hit_points: 54,
    level: "6",
)

#let mummy = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: The 2026-10-02 changelog gives the Mummy a new Cursed Slam ability, without
publishing its text. Not added.
*/
