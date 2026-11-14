#import "../../global.typ": *

#let creature_data = (
    name: "Mummy Lord",
    type: ("Creature", "Undead"),
    blocks: (
        passive_abilities.undying,
        (kind: "passive", name: "Cursed Gaze", effect: [On crit: #dc(20) #INT save, or suffer 1 Wound.]),
        (kind: "active", cost: (actions(1),), limitation: per_turn(1), name: "Scarab Swarm", effect: [Summon 10 scarab minions (d6) within 6 spaces.]),
        (kind: "active", cost: (actions(1),), limitation: per_turn(1), name: "Slam", effect: [2 attacks. 1d4+20 damage. On damage: #kw_dazed.]),
    ),
    reminder: (conditions.dazed,),
    actions: 2,
    hit_points: 280,
    level: "21",
)

#let mummy_lord = creat_creature(creature_data)
