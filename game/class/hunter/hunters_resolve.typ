#import "/global.typ": *

#let ability_data = (
    name: "Hunter's Resolve",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [Whenever you have no #TotH charges during your turn, every creature counts as #kw_marked for your movement and melee attacks until the end of that turn.],
      ),
    ),
    reminder: (hunter_keywords.marked,),
)

#let hunters_resolve = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
