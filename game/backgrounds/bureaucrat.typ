#import "/global.typ": *

#let ability_data = (
    name: "Bureaucrat",
    type: ("Background",),
    blocks: (
      (kind: "narrative", effect: [You grew up among ledgers, stamps and endless corridors of offices. You copied deeds, collected taxes and learned that every door opens with the right form. You know how power really works, through signatures, not swords. To you, the world is a great machine, and you know where its levers are.]),
      (kind: "narrative", name: "Proper Channels", effect: [You have #kw_advantage on Influence checks with officials, guards and anyone who serves an authority.]),
    ),
    reminder: (keywords.advantage,),
)

#let bureaucrat = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Nimblium's own background, not from the book: backgrounds are where you grew up,
with one small effect tied to that origin (user ruling 2026-11-28).
*/
