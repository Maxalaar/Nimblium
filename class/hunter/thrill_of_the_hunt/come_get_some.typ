#import "../../../global.typ": *

#let ability_data = (
    name: "Come Get Some!",
    type: (
        "Ability",
        "Hunter",
        "Thrill of the hunt"
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action", "1 TotH charge"),
        effect: [Attack a target, this attack cannot miss. The target is #keyword_style[Taunted] by you until the end of their next turn.],
      ),
    ),
    reminder: (conditions.taunted,),
)

#let come_get_some = creat_ability(ability_data)