#import "../../../global.typ": *

#let ability_data = (
    name: "Rampage",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (
        kind: "active",
        limitation: per_turn(1),
        effect: [When you hit with an attack, your next attack this turn uses the same roll instead of rolling again.],
      ),
    ),
)

#let rampage = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
