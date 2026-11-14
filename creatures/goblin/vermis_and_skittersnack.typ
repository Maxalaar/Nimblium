#import "../../global.typ": *

#let creature_data = (
    name: "Vermis & Skittersnack",
    type: ("Creature", "Goblin", "Legendary"),
    blocks: (
        (kind: "passive", name: "Saves", effect: [It has advantage on #STR and #DEX saves.]),
        (kind: "passive", name: "Mangy Rat", effect: [When hit by an attack, a Giant Flea joins the fight. Giant Fleas are d4 minions that deal 1 damage and act at the end of each round.]),
        (kind: "passive", name: "Bloodied", effect: [When it becomes #kw_bloodied, 3 Giant Fleas per hero join the fight.]),
        (kind: "passive", name: "Last Stand", effect: [At 0 #HP, it dies only after taking 30 more damage. Until then, it has 2 actions per turn.]),
        (kind: "active", cost: (actions(1),), name: "Chaaarrge!", effect: [It moves up to 10 spaces in a straight line. Each creature in its 2-space-wide path takes 2d6 damage.]),
        (kind: "active", cost: (actions(1),), name: "Itchy Fleas", effect: [It moves up to 4 spaces. 1 Giant Flea per hero joins the fight. It can't use the same ability twice in a row.]),
    ),
    reminder: (conditions.bloodied,),
    hit_points: 120,
    level: "3",
    split: true,
)

#let vermis_and_skittersnack = creat_creature(creature_data)
