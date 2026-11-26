#import "/global.typ": *

#let creature_data = (
    name: "Mummy Lord",
    type: ("Creature", "Undead"),
    blocks: (
        passive_abilities.undying,
        (kind: "passive", name: "Cursed Gaze", effect: [Whenever a creature crits this creature, that creature makes a #dc(20) #INT check. If it fails, it gains 1 Wound.]),
        (kind: "active", cost: (actions(1),), limitation: per_turn(1), name: "Scarab Swarm", effect: [It summons 10 scarab minions within 6 spaces. Each one deals 1d6 damage.]),
        (kind: "active", cost: (actions(1),), limitation: per_turn(1), name: "Slam", attacks: 2, damage: "1d4+20", effect: [Whenever this attack deals damage, the target is #kw_dazed.]),
    ),
    reminder: (conditions.dazed,),
    actions: 2,
    hit_points: 280,
    level: "21",
)

#let mummy_lord = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Nimble's "Cursed Gaze. When crit: ..." is read as "when a creature crits the
Mummy Lord": Nimble writes "On crit" for a monster's own attacks, and the gaze curses the
attacker.

interpretation: "Scarab minions (d6)" gives the minions' die size, which is their damage die
(e.g. the Goblin Minion's Stab is 1d6). Each scarab deals 1d6 damage.
*/
