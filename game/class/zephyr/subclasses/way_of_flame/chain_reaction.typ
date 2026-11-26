#import "/global.typ": *

#let ability_data = (
    name: "Chain Reaction",
    type: ("Ability", "Zephyr", "Way of Flame"),
    blocks: (
      (kind: "passive", limitation: per_turn(1), effect: [When your unarmed strike crits, each creature of your choice within the Reach shown in Levels from the target takes fire damage equal to your #STR plus the #card_ref("Momentum", "Mom") charges you spent on that strike. Repeat from each creature damaged this way, against creatures not yet damaged.]),
    ),
    levels: [
      *Level 11:* Reach 1.\
      *Level 15:* Reach 2.
    ],
)

#let chain_reaction = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.71 and the 2026-10-02 changelog (level 11: unarmed crits only, adjacent
creatures, STR + Momentum spent).

interpretation: "Adjacent" is Reach 1. Encompassing Flames (level 15, "you may double the
Reach") is the Level 15 line: Reach 2.
*/
