#import "../../global.typ": *

#let creature_data = (
    name: "Goblin Taskmaster",
    type: ("Creature", "Goblin"),
    blocks: (
        (kind: "passive", name: "Meat Shield", effect: [When this creature would be hit by an attack, another Goblin may #kw_interpose for it for free.]),
        (kind: "passive", name: "Get in Here!", effect: [At the end of each of its turns, it summons a #card_ref("Goblin Minion") adjacent to it.]),
        (kind: "active", cost: (actions(1),), name: "Stab", damage: "1d6+2"),
        (kind: "active", cost: (actions(1),), name: "Shoot", range: 8, damage: "1d6+2"),
    ),
    reminder: (keywords.interpose,),
    hit_points: 30,
    defense: 10,
    size: "Small",
    level: "2",
)

#let goblin_taskmaster = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Nimble's "Can force other goblins to Interpose for him" is read as: the other
Goblin Interposes for free, since Nimble monsters don't spend actions on reactions.
*/
