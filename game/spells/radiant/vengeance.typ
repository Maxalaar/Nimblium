#import "/global.typ": *

#let spell_data = (
    name: "Vengeance",
    type: ("Spell", "Radiant", "Tier 5"),
    cost: (actions(2), mana(5)),
    reach: "1",
    damage: "1d100",
    effect: [Cast this spell only on a creature that attacked a #kw_dying ally or dropped an ally to 0 #HP since your last turn.],
    upcast: [It gains #kw_advantage 1, and its Reach increases by 1.],
    reminder: (conditions.dying, keywords.advantage),
)

#let vengeance = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
