#import "/global.typ": *

#let ability_data = (
    name: "Reposition",
    type: ("Ability", "Commander", "Commander's Order"),
    blocks: (
      (kind: "active", cost: (actions(1),), limitation: per_round(1), effect: [One ally within 18 spaces moves up to its #speed, or two allies within 18 spaces move up to half their #speed, for free. You can use this during an ally's turn.]),
    ),
)

#let reposition = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book's "Action/Reaction (on an ally's turn)" is written as 1 Action
that can also be used during an ally's turn, 1/round (user ruling 2026-11-21).

interpretation: Renamed from "Reposition!" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
