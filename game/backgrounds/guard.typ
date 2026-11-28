#import "/global.typ": *

#let ability_data = (
    name: "Guard",
    type: ("Background",),
    blocks: (
      (kind: "narrative", effect: [You kept the peace in the streets of a city, on the walls or at its gates. You chased thieves, broke up brawls and stood watch through long nights. You know every alley, every tavern and every face that means trouble. To you, the world needs rules, even if those who make them don't always deserve them.]),
      (kind: "active", name: "Shield Brother", limitation: per_encounter(1), effect: [You may #kw_interpose for free.]),
    ),
    reminder: (keywords.interpose,),
)

#let guard = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Nimblium's own background, not from the book: backgrounds are where you grew up,
with one small effect tied to that origin (user ruling 2026-11-28).
*/
