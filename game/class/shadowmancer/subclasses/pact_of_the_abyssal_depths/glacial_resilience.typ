#import "/global.typ": *

#let ability_data = (
    name: "Glacial Resilience",
    type: ("Ability", "Shadowmancer", "Pact of the Abyssal Depths"),
    blocks: (
      (kind: "active", cost: (actions(1),), limitation: per_safe_rest(1), effect: [When you are attacked or would gain a condition, gain #times("10", LVL) temp #HP and end all negative conditions on yourself. At the end of your next turn, you lose the temp #HP left from this ability.]),
    ),
)

#let glacial_resilience = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book's Reaction is written as 1 Action with a "When" trigger
(card-cost convention).
*/
