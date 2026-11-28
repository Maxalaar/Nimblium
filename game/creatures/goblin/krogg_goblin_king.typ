#import "/global.typ": *

#let creature_data = (
    name: "Krogg, Goblin King",
    type: ("Creature", "Goblin"),
    blocks: (
        (kind: "passive", name: "Bloodied", effect: [While this creature is #kw_bloodied, its abilities deal 2d8+3 damage instead.]),
        (kind: "passive", name: "Last Stand", effect: [When this creature drops to 0 #HP, it dies only after taking 20 more damage. Until then, its #defense is 20.]),
        (kind: "active", cost: (actions(1),), name: "Manglemaul", damage: "2d6+3", effect: [It may move up to 6 spaces before this attack. Whenever this attack deals damage, the target is #kw_grappled.]),
        (kind: "active", cost: (actions(1),), name: "Crack Skulls", effect: [It may move up to 6 spaces before using this ability. It swings a creature it has #kw_grappled at another creature. Both take 2d6+3 damage, and the first one is no longer #kw_grappled.]),
    ),
    reminder: (conditions.bloodied, conditions.grappled),
    hit_points: 75,
    defense: 10,
    level: "6",
    actions: 3,
    str: 3,
    dex: 3,
    split: true,
)

#let krogg_goblin_king = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book says "Krogg's damage increases to 2d8+3" when Bloodied. It applies
to both abilities, so the card says "its abilities", since Crack Skulls is not an attack.

house-rule: No legendary creatures (user ruling 2026-11-28): Krogg acts once per round, on the
creatures' turn, with ACT 3 instead of 1 action after each hero's turn, and level 6 instead of 2
(the book's level is the party's level: alone, he is worth 3 level 2 heroes).

changelog: The 2026-10-02 changelog gives legendary creatures HP per hero, without
publishing the new values. HP kept from Goblins v1.1.

house-rule: The book's saves (STR+, DEX+) become stats: each "+" is +3, so STR +3 and DEX +3
(there are no saves in Nimblium; see guides/house_rules.txt).
*/
