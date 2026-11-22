#import "../../global.typ": *

#let ability_data = (
    name: "Glorious Paragon",
    type: ("Ability", "Oathsworn"),
    blocks: (
      (kind: "passive", effect: [When you #kw_interpose, you can also Defend for free.]),
    ),
    reminder: (keywords.interpose,),
)

#let glorious_paragon = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

The book's +1 to any 2 stats is a stat increase and is not on the card.
*/
