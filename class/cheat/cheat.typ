#import "../../global.typ": *

#let ability_data = (
    name: "Cheat",
    type: (
        "Ability",
        "Cheat",
    ),
    blocks: (
      (kind: "active", limitation: "1/round", effect: [You may Move or #keyword_style[Hide] for free.]),
      (kind: "active", limitation: "1/day", effect: [You may change any skill check result to 10+INT.]),
      (kind: "passive", effect: [If you roll less than 10 on Initiative, you may change it to 10 instead.]),
      (kind: "narrative", effect: [You may gain advantage on skill checks while playing any games, competitions, or placing wagers.]),
    ),
    reminder: (keywords.hide, keywords.cover, keywords.full_cover),
)

#let cheat = creat_ability(ability_data)