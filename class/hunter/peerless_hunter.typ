#import "../../global.typ": *

#let ability_data = (
    name: "Peerless Hunter",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (kind: "passive", effect: [You can Defend against a #keyword_style[Marked] creature for free.]),
    ),
    reminder: (hunter_keywords.marked,),
)

#let peerless_hunter = creat_ability(ability_data)
