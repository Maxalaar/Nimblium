#import "../../global.typ": *

#let ability_data = (
    name: "Cheat",
    type: (
        "Ability",
        "Cheat",
    ),
    blocks: (
      (kind: "active", limitation: per_round(1), effect: [You may Move or #kw_hide for free.]),
      (kind: "active", limitation: per_day(1), effect: [You may change any skill check result to 10+#INT.]),
      (kind: "passive", effect: [If you roll less than 10 on Initiative, you may change it to 10 instead.]),
      (kind: "narrative", effect: [You may gain advantage on skill checks while playing any games, competitions, or placing wagers.]),
    ),
    reminder: (keywords.hide, keywords.cover, keywords.full_cover),
)

#let cheat = creat_ability(ability_data)