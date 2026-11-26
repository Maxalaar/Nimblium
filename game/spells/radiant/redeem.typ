#import "/global.typ": *

#let spell_data = (
    name: "Redeem",
    type: ("Spell", "Radiant", "Tier 9", "AoE"),
    cost: (mana(9),),
    effect: [You can cast this spell only during a #safe_rest, and only once per level. Revive any number of creatures you choose within 2 km that died in the past year.],
)

#let redeem = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Cast during a Safe Rest, once per level (book: 24 hours to cast, a diamond worth
10,000 gp, and a creature can be revived by this spell only once). There is no money, and a
Tier 9 spell recast after every Safe Rest made death meaningless.
*/
