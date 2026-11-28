#import "/global.typ": *

#let ability_data = (
    name: "Fallen",
    type: ("Background",),
    blocks: (
      (kind: "narrative", effect: [Your family once had wealth, a title and a seat at the table. Then came the scandal, the debt or the betrayal, and you lost everything. You still remember the taste of fine wine and the faces of those who turned their backs on you. You know how fast fortune turns, and you mean to take back what was yours.]),
      (kind: "active", name: "Grudge", limitation: per_encounter(1), effect: [When an enemy hits you, your next attack against it has #kw_advantage and deals #KEY more damage.]),
    ),
    reminder: (keywords.advantage,),
)

#let fallen = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Nimblium's own background, not from the book: backgrounds are where you grew up,
with one small effect tied to that origin (user ruling 2026-11-28).
*/
