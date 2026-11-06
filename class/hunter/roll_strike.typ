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
        cost: (actions(1),),
        effect: [If you have no #TotH charges, move up to your #speed toward a #kw_marked creature. If you end adjacent to them, make a melee attack against them.],
      ),
    ),
    reminder: (hunter_keywords.marked,),
)

#let roll_strike = creat_ability(ability_data)