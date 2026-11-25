#import "/global.typ": *

#let ability_data = (
    name: "Shield Expert",
    type: ("Ability", "Commander", "Champion of the Bulwark"),
    blocks: (
      (kind: "passive", limitation: per_round(1), effect: [While you wear a shield, you can Defend for free. When you do, you may deal damage equal to your shield's #defense to an adjacent enemy.]),
    ),
)

#let shield_expert = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Was "Defend 2 times each round" with a free opportunity attack -> Defend for
free and damage an adjacent enemy equal to your shield's Defense.

house-rule: The free Defend is limited to once per round (user ruling 2026-11-21). The
changelog gives no limit; the book allowed 2 Defends per round.
*/
