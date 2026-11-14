// review: style=2026-11-14 changelog=2026-10-02
#import "../../../../global.typ": *

#let ability_data = (
    name: "Supreme Control",
    type: (
        "Ability",
        "Mage",
        "Invoker of Control",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever you use Force of Will, you may resolve the chosen option twice.]),
      (
        kind: "active",
        cost: (actions(1),),
        effect: [You may use Force of Will outside your turn.],
      ),
    ),
)

#let supreme_control = creat_ability(ability_data)
