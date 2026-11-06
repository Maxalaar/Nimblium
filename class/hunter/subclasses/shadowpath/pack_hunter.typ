#import "../../../../global.typ": *

#let ability_data = (
    name: "Pack Hunter",
    type: (
        "Ability",
        "Hunter",
        "Shadowpath",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever you make a creature #kw_marked, you may also make another creature within 6 spaces of it #kw_marked.]),
    ),
    reminder: (hunter_keywords.marked,),
)

#let pack_hunter = creat_ability(ability_data)
