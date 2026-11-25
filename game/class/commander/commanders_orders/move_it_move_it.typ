#import "/global.typ": *

#let ability_data = (
    name: "Move it! Move it!",
    type: ("Ability", "Commander", "Commander's Order"),
    blocks: (
      (kind: "passive", effect: [When you roll Initiative, you and an ally have #kw_advantage on that roll and +3 #speed for 1 round.]),
    ),
    reminder: (keywords.advantage,),
)

#let move_it_move_it = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
