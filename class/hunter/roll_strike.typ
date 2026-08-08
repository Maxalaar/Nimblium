#import "../../global.typ": *

#let ability_data = (
    name: "Roll & Strike",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action",),
        effect: [If you have no TotH charges, move up to your speed toward a #keyword_style[Marked] creature. If you end adjacent to them, make a melee attack against them.],
      ),
    ),
    reminder: (hunter_keywords.marked,),
)

#let roll_strike = creat_ability(ability_data)