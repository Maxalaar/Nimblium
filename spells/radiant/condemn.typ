#import "../../global.typ": *

#let spell_data = (
    name: "Condemn",
    type: ("Spell", "Radiant", "Tier 3"),
    cost: (actions(1), mana(3)),
    reach: "4",
    damage: "30",
    effect: [Cast this spell only on an enemy that scored a critical hit since your last turn. Nothing can reduce this spell's damage. The next attack against the target has #kw_advantage.],
    upcast: [Its Reach increases by 1, and that next attack gains #kw_advantage 1 more.],
    reminder: (keywords.advantage,),
)

#let condemn = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
