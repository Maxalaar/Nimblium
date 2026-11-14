#import "../../global.typ": *

#let ability_data = (
    name: "Cheat",
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
        effect: [Change the result of one of your skill checks to 10+#INT.],
      ),
      (kind: "passive", effect: [When you roll less than 10 on Initiative, you may change the result to 10.]),
      (kind: "narrative", effect: [You may gain advantage on skill checks while you play games, compete or place wagers.]),
    ),
    reminder: (keywords.hide, keywords.cover, keywords.full_cover,),
)

#let cheat = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
