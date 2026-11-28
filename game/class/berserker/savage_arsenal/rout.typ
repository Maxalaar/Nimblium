#import "/global.typ": *

#let ability_data = (
    name: "Rout",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1),),
        effect: [Choose an enemy within 12 spaces and make a Might check against a DC equal to its current #HP. On a success, it immediately flees the battle. You can use this ability only while you are #kw_raging.],
      ),
    ),
    reminder: (berserker_keywords.raging,),
)

#let rout = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "You're Next!" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
