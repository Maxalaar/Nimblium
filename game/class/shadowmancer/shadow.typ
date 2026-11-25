#import "/global.typ": *

#let creature_data = (
    name: "Shadow",
    type: ("Creature", "Shadow", "Minion", "Shadowmancer"),
    blocks: (
        passive_abilities.minion,
        (kind: "passive", name: "Faithless", effect: [This creature abandons its summoner as soon as combat ends.]),
        (kind: "active", cost: (actions(1),), name: "Shadow Claw", damage: "1d12 necrotic"),
    ),
)

#let shadow = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book gives Shadows a Reach 1, d12 attack without a damage type. It is
read as necrotic: the subclasses let Shadows deal "fire or necrotic" or "cold or necrotic"
damage. The attack is named Shadow Claw for the card.

The book notes that you and your Shadows are different creatures, so attacking and then
commanding them is not a Rushed Attack. That follows from the general rules and is not on
the card.
*/
