#import "../../global.typ": *

#let creature_data = (
    name: "Goblin Minion",
    type: ("Creature", "Goblin", "Minion"),
    blocks: (
        passive_abilities.minion,
        (kind: "active", cost: (actions(1),), name: "Stab", damage: "1d6"),
    ),
    size: "Small",
)

#let goblin_minion = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
