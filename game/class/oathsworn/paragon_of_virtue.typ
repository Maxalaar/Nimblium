#import "/global.typ": *

#let ability_data = (
    name: "Paragon of Virtue",
    type: ("Ability", "Oathsworn"),
    blocks: (
      (kind: "narrative", effect: [You have #kw_advantage on Influence checks to convince someone while you tell the plain truth, and #kw_disadvantage while you mislead them.]),
    ),
    reminder: (keywords.advantage, keywords.disadvantage),
)

#let paragon_of_virtue = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
