#import "/global.typ": *

#let creature_data = (
    name: "Nilbog",
    type: ("Creature", "Goblin"),
    blocks: (
        (kind: "passive", name: "Backwards Chaos", effect: [Attacks that would hit this creature miss instead. Attacks that would miss it hit instead.]),
        (kind: "passive", name: "Neener Neener!", effect: [When a hero misses an attack against a Goblin, or could make an opportunity attack against a Goblin but doesn't, that hero takes 4 psychic damage.]),
    ),
    hit_points: 30,
    level: "3",
)

#let nilbog = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
