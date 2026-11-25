#import "/global.typ": *

#let creature_data = (
    name: "Vermis & Skittersnack",
    type: ("Creature", "Goblin", "Legendary"),
    blocks: (
        (kind: "passive", name: "Saves", effect: [This creature has #kw_advantage on #STR and #DEX saves.]),
        (kind: "passive", name: "Mangy Rat", effect: [Whenever this creature is hit by an attack, it summons a Giant Flea. Giant Fleas are minions that deal 1 damage and act at the end of each round.]),
        (kind: "passive", name: "Bloodied", effect: [When this creature becomes #kw_bloodied, it summons 3 Giant Fleas per hero.]),
        (kind: "passive", name: "Last Stand", effect: [When this creature drops to 0 #HP, it dies only after taking 30 more damage. Until then, it has 2 actions per turn.]),
        (kind: "active", cost: (actions(1),), name: "Chaaarrge!", effect: [It moves up to 10 spaces in a straight line. Each creature in its 2-space-wide path takes 2d6 damage. It can't use this ability twice in a row.]),
        (kind: "active", cost: (actions(1),), name: "Itchy Fleas", effect: [It moves up to 4 spaces and summons 1 Giant Flea per hero. It can't use this ability twice in a row.]),
    ),
    reminder: (conditions.bloodied,),
    hit_points: 120,
    size: "Large",
    level: "3",
    split: true,
)

#let vermis_and_skittersnack = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book calls Giant Fleas "d4 minions". The die size of a minion is its
damage die, but the book also says they deal 1 damage on hit, so the card keeps only that. The
die size only matters for Nimble's optional overkill rule, which Nimblium doesn't use.

changelog: The 2026-10-02 changelog gives legendary creatures HP per hero, without
publishing the new values. HP kept from Goblins v1.1.
*/
