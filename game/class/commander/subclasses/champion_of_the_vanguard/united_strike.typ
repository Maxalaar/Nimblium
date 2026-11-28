#import "/global.typ": *

#let ability_data = (
    name: "United Strike",
    type: ("Ability", "Commander", "Champion of the Vanguard"),
    blocks: (
      (kind: "passive", effect: [Attacks made with #card_ref("Coordinated Strike") have #kw_advantage.]),
    ),
    reminder: (keywords.advantage,),
)

#let united_strike = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Was advantage, ignore disadvantage and +1 action for the chosen allies -> only
advantage.

interpretation: Renamed from "As One!" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
