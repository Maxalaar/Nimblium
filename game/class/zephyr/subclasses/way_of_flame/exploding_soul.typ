#import "/global.typ": *

#let ability_data = (
    name: "Exploding Soul",
    type: ("Ability", "Zephyr", "Way of Flame"),
    blocks: (
      (kind: "active", limitation: per_round(1), effect: [On your turn, gain 1 Wound.]),
      (kind: "passive", effect: [Whenever you gain a Wound, make an unarmed strike for free. It deals its damage to every other creature within the Reach shown in Levels.]),
    ),
    levels: [
      *Level 3:* Reach 1.\
      *Level 15:* Reach 1 or 2, your choice.
    ],
)

#let exploding_soul = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.71 and the 2026-10-02 changelog (level 3: a Wound triggers an unarmed
strike "dealing the damage to ALL others within Reach 1"; Encompassing Flames, level 15: "You may
double the Reach of Chain Reaction and Exploding Soul", written here as a Levels line).
*/
