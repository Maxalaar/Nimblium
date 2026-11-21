#import "../../../global.typ": *

#let ability_data = (
    name: "Reposition!",
    type: ("Ability", "Commander", "Commander's Order"),
    blocks: (
      (kind: "active", cost: (actions(1),), limitation: per_round(1), effect: [One ally moves up to its #speed, or two allies move up to half their #speed, for free. You can use this during an ally's turn.]),
    ),
)

#let reposition = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book's "Action/Reaction (on an ally's turn)" is written as 1 Action
that can also be used during an ally's turn, 1/round (user ruling 2026-11-21).
*/
