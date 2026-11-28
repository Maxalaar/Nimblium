#import "/global.typ": *

#let ability_data = (
    name: "Sure Strikes",
    type: (
        "Ability",
        "Cheat",
        "Scoundrel",
    ),
    blocks: (
      (
        kind: "active",
        limitation: per_encounter(1),
        effect: [This round, your attacks don't miss and you crit on 1 less than normally needed. You gain #LVL temp #HP.],
      ),
    ),
)

#let sure_strikes = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "Heads I Win, Tails You Lose" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
