#import "/global.typ": *

#let ability_data = (
    name: "Slip Away",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [When an ally within 4 spaces takes a critical hit, you may become #kw_invisible until the end of your next turn, then move up to half your #speed.],
      ),
    ),
    reminder: (conditions.invisible,),
)

#let slip_away = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "I'm Outta Here!" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
