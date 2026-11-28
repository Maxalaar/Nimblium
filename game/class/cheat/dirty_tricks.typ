#import "/global.typ": *

#let ability_data = (
    name: "Dirty Tricks",
    type: (
        "Ability",
        "Cheat",
    ),
    blocks: (
      (
        kind: "active",
        limitation: per_round(1),
        effect: [Move or #kw_hide for free.],
      ),
      (
        kind: "active",
        limitation: per_safe_rest(1),
        effect: [Change the result of one of your checks to 10+#INT.],
      ),
      (kind: "narrative", effect: [You may gain #kw_advantage on checks while you play games, compete or place wagers.]),
    ),
    reminder: (keywords.hide, keywords.cover,),
)

#let dirty_tricks = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "Cheat" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.

house-rule: No Initiative block (book: change an Initiative roll under 10 to 10) (no Initiative, user ruling 2026-11-28).
*/
