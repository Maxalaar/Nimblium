#import "../../global.typ": *

#let ability_data = (
    name: "Nemesis",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (kind: "passive", effect: [Any number of creatures can be #kw_marked by you at the same time.]),
    ),
    reminder: (hunter_keywords.marked,),
)

#let nemesis = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
