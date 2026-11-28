#import "/global.typ": *

#let creature_data = (
    name: "Vermis & Skittersnack",
    type: ("Creature", "Goblin"),
    blocks: (
        (kind: "passive", name: "Mangy Rat", effect: [Whenever this creature is hit by an attack, it summons a Giant Flea. Giant Fleas are minions that deal 1 damage and act at the end of each round.]),
        (kind: "passive", name: "Bloodied", effect: [When this creature becomes #kw_bloodied, it summons 3 Giant Fleas per hero.]),
        (kind: "passive", name: "Last Stand", effect: [When this creature drops to 0 #HP, it dies only after taking 30 more damage. Until then, it has 2 more actions per turn.]),
        (kind: "active", cost: (actions(1),), name: "Chaaarrge!", effect: [It moves up to 10 spaces in a straight line. Each creature in its 2-space-wide path takes 2d6 damage. It can't use this ability twice in a row.]),
        (kind: "active", cost: (actions(1),), name: "Itchy Fleas", effect: [It moves up to 4 spaces and summons 1 Giant Flea per hero. It can't use this ability twice in a row.]),
    ),
    reminder: (conditions.bloodied,),
    hit_points: 120,
    size: "Large",
    level: "9",
    actions: 3,
    str: 3,
    dex: 3,
    split: true,
)

#let vermis_and_skittersnack = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book calls Giant Fleas "d4 minions". The die size of a minion is its
damage die, but the book also says they deal 1 damage on hit, so the card keeps only that. The
die size only matters for Nimble's optional overkill rule, which Nimblium doesn't use.

house-rule: No legendary creatures (user ruling 2026-11-28): Vermis & Skittersnack act once per
round, on the creatures' turn, with ACT 3 instead of 1 action after each hero's turn, and level
9 instead of 3 (the book's level is the party's level: alone, they are worth 3 level 3 heroes).
Last Stand gives 2 more actions per turn (book: 2 actions on each of its turns).

changelog: The 2026-10-02 changelog gives legendary creatures HP per hero, without
publishing the new values. HP kept from Goblins v1.1.

house-rule: The book's saves (STR+, DEX+) become stats: each "+" is +3, so STR +3 and DEX +3
(there are no saves in Nimblium; see guides/house_rules.txt).
*/
