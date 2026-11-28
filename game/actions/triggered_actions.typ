#import "/global.typ": *

#let ability_data = (
    name: "Triggered Actions",
    type: (
        "Ability",
        "Combat",
    ),
    blocks: (
      (
        kind: "active",
        name: "Defend",
        cost: (actions(1),),
        limitation: per_round(1),
        effect: [When an attack hits you, you take your #defense less damage from it. A critical hit ignores your #defense.],
      ),
      (
        kind: "active",
        name: "Interpose",
        cost: (actions(1),),
        limitation: per_round(1),
        effect: [When a creature within 2 spaces of you would be hit by an attack, you become the new target of that attack. You move into its space, and it moves to an adjacent space of its choice.],
      ),
      (
        kind: "active",
        name: "Opportunity Attack",
        cost: (actions(1),),
        limitation: per_round(1),
        effect: [When a creature leaves your Reach, you may make a melee attack against it.],
      ),
    ),
)

#let triggered_actions = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.14 (Heroic Reactions), both changelogs (Defend uses Defense and crits
ignore it, the pushed ally chooses where it moves, Opportunity Attacks against any creature,
decide after seeing the roll).

house-rule: There are no Reactions: these are actions with a "When..." trigger, 1 action and
1/round (writing_rules.txt §4). Only heroes make Opportunity Attacks, unless a creature's card
says otherwise.

house-rule: Opportunity Attack (user ruling 2026-11-28): it triggers when a creature leaves your
Reach, and the attack has no disadvantage (book: an adjacent creature willingly moving away, and
the attack has disadvantage).

house-rule: Help is removed. Combat rules stay objective: helping an ally is role-play,
handled by the GM like any narrative action.
*/
