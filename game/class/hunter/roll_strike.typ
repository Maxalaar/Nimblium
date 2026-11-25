#import "/global.typ": *

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
        effect: [Move up to your #speed toward a #kw_marked creature. If you end adjacent to it, make a melee attack against it for free. You can use this ability only while you have no #TotH charges.],
      ),
    ),
    reminder: (hunter_keywords.marked,),
)

#let roll_strike = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
