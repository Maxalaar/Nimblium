#import "/global.typ": *

#let ability_data = (
    name: "Artist",
    type: ("Background",),
    blocks: (
      (kind: "narrative", effect: [You grew up with a troupe of actors, musicians or acrobats, from stage to stage. You learned to sing, to perform and to hold a crowd in the palm of your hand. Applause is your bread, and a good story is worth more than gold. To you, the world is a great stage, and everyone plays a role.]),
      (kind: "active", name: "Showstopper", cost: (actions(1),), limitation: per_encounter(1), effect: [Each enemy within 6 spaces that can see you makes a #WIL check against #dc(10, stat: KEY). If it fails, its next attack has #kw_disadvantage.]),
    ),
    reminder: (keywords.disadvantage,),
)

#let artist = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Nimblium's own background, not from the book: backgrounds are where you grew up,
with one small effect tied to that origin (user ruling 2026-11-28).
*/
