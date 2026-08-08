#import "../../global.typ": *

#let ability_data = (
    name: "Hunter's Resolve",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever you have no TotH charges, treat all creatures as #keyword_style[marked] for movement and melee attacks.]),
    ),
    reminder: (hunter_keywords.marked,),
)

#let hunters_resolve = creat_ability(ability_data)
