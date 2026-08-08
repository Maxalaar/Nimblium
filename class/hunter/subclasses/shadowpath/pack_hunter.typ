#import "../../../../global.typ": *

#let ability_data = (
    name: "Pack Hunter",
    type: (
        "Ability",
        "Hunter",
        "Shadowpath",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever you #keyword_style[Mark] a creature, you may also mark another creature within 6 spaces of them.]),
    ),
    reminder: (hunter_keywords.marked,),
)

#let pack_hunter = creat_ability(ability_data)
