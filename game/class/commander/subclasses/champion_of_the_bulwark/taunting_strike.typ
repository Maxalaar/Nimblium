#import "/global.typ": *

#let ability_data = (
    name: "Taunting Strike",
    type: ("Ability", "Commander", "Champion of the Bulwark"),
    blocks: (
      (kind: "passive", limitation: per_turn(1), effect: [You may #kw_taunt a creature you attack until the end of its next turn.]),
    ),
    reminder: (conditions.taunted,),
)

#let taunting_strike = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: A creature you attack (was: a creature you hit).
*/
