#import "/global.typ": *

#let ability_data = (
    name: "Blink Strike",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(2),),
        effect: [Teleport up to 12 spaces to a space adjacent to a #kw_distracted creature, then make a melee attack against it. If you crit, you may teleport again, up to 12 spaces.],
      ),
    ),
    reminder: (keywords.distracted,),
)

#let blink_strike = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "How'd YOU get here?!" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
