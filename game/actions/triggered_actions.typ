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
        effect: [When an attack hits you, you take your #defense less damage from it.],
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
        effect: [When an adjacent creature willingly moves away from you, you may make a melee attack against it with #kw_disadvantage.],
      ),
      (
        kind: "active",
        name: "Help",
        cost: (actions(1),),
        limitation: per_round(1),
        effect: [When an ally makes a roll, they may reroll it if you can explain how you help. Only one hero can Help on each roll.],
      ),
    ),
)

#let triggered_actions = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.14 (Heroic Reactions), both changelogs (Defend uses Defense and crits
ignore it, the pushed ally chooses where it moves, Opportunity Attacks against any creature,
Help lets an ally reroll, decide after seeing the roll).

house-rule: There are no Reactions: these are actions with a "When..." trigger, 1 action and
1/round (writing_rules.txt §4). Only heroes make Opportunity Attacks, unless a creature's card
says otherwise.
*/
