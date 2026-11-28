#import "/global.typ": *

#let ability_data = (
    name: "Deathward",
    type: ("Ability", "Oathsworn", "Sacred Decree"),
    blocks: (
      (kind: "passive", limitation: per_encounter(1), effect: [When you or an ally within your #kw_aura would drop to 0 #HP, its #HP becomes 1 instead.]),
    ),
    reminder: (keywords.aura,),
)

#let deathward = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "Courage!" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
