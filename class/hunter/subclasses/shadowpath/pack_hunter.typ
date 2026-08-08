#import "../../../../global.typ": *

#let ability_data = (
    name: "Pack Hunter",
    type: (
        "Ability",
        "Hunter",
        "Shadowpath",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever you mark a creature, you may also mark another creature within 6 spaces of them for free.]),
    ),
)

#let pack_hunter = creat_ability(ability_data)
