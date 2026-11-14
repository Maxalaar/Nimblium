#import "../../global.typ": *

#let creature_data = (
    name: "Krogg, Goblin King",
    type: ("Creature", "Goblin", "Legendary"),
    blocks: (
        (kind: "passive", name: "Saves", effect: [It has advantage on #STR and #DEX saves.]),
        (kind: "passive", name: "Bloodied", effect: [While #kw_bloodied, its attacks deal 2d8+3 damage instead.]),
        (kind: "passive", name: "Last Stand", effect: [At 0 #HP, it dies only after taking 20 more damage. Until then, its #defense is 20.]),
        (kind: "active", cost: (actions(1),), name: "Manglemaul", effect: [It moves up to 6 spaces. 2d6+3 damage. On damage: #kw_grappled, escape #dc(10).]),
        (kind: "active", cost: (actions(1),), name: "Crack Skulls", effect: [It moves up to 6 spaces and swings a creature it Grapples at another one. Both take 2d6+3 damage. The Grapple ends.]),
    ),
    reminder: (conditions.bloodied, conditions.grappled),
    hit_points: 75,
    defense: 10,
    level: "2",
    split: true,
)

#let krogg_goblin_king = creat_creature(creature_data)
