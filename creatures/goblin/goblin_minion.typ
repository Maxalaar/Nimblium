#import "../../global.typ": *

#let creature_data = (
    name: "Goblin Minion",
    type: ("Creature", "Goblin", "Minion"),
    blocks: (
        passive_abilities.minion,
        (kind: "active", cost: (actions(1),), name: "Stab", effect: [1d6 damage.]),
    ),
)

#let goblin_minion = creat_creature(creature_data)
