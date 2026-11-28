#import "/global.typ": *

#let ability_data = (
    name: "Free Interpose",
    type: ("Ability", "Oathsworn"),
    blocks: (
      (kind: "passive", effect: [You can #kw_interpose for free.]),
    ),
    reminder: (keywords.interpose,),
)

#let free_interpose = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "My Life, for My Friends" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
