#import "../../global.typ": *

#let creature_data = (
    name: "Goblin Taskmaster",
    type: ("Creature", "Goblin"),
    blocks: (
        (kind: "passive", name: "Meat Shield", effect: [When this creature is attacked, it may force an adjacent Goblin to Interpose for it.]),
        (kind: "passive", name: "Get in Here!", effect: [At the end of each of its turns, a Goblin Minion joins the fight adjacent to it.]),
        (kind: "active", cost: (actions(1),), name: "Stab", effect: [1d6+2 damage.]),
        (kind: "active", cost: (actions(1),), name: "Shoot", effect: [Range 8, 1d6+2 damage.]),
    ),
    hit_points: 30,
    defense: 10,
    level: "2",
)

#let goblin_taskmaster = creat_creature(creature_data)
